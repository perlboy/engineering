#!/usr/bin/perl

use Net::GitHub;
use Data::Dumper;
use Parse::CSV;
use strict;
$| = 1;

#####
# Very quick script to retrieve, parse and summarise github stats
# No warranty implied!
#####
my $orgName           = 'ConsumerDataStandardsAustralia';
my %sprintMapping     = (
    1 => {
        'engineering' => 1,
        'cds-models' => 2,
        'cds-codegen' => 2
    },
    2 => {
        'engineering' => 2,
        'cds-models' => 3,
        'cds-codegen' => 3
    },
    3 => {
            'engineering' => 3,
            'cds-models' => 4,
            'cds-codegen' => 4
    }
);

die "Must supply TOKEN variable" if !$ENV{'TOKEN'};

my $github = Net::GitHub->new( access_token => $ENV{'TOKEN'} );
my $issueApi = $github->issue;


my $parser = Parse::CSV->new(
    file  => 'issues.csv',
    names => 1,
);

while ( my $oneIssue = $parser->fetch ) {

    $github->set_default_user_repo( $orgName, $oneIssue->{'Repository'} );
    $issueApi->set_default_user_repo( $orgName, $oneIssue->{'Repository'} );

    my $bodyContent = qq~
**Description**
$oneIssue->{'Description'}

**Related Work Items**
Where applicable please supply a list of related work items (using #issue format):

~;

    my @labels = split(/\n/, $oneIssue->{'Label'});
    my $createdIssue = $issueApi->create_issue( {
                           "title" => $oneIssue->{'Name'},
                           "body" => $bodyContent,
                           "milestone" => $sprintMapping{$oneIssue->{'Sprint'}}->{$oneIssue->{'Repository'}},
                           "labels" => \@labels
                       } );

    print "Created issue: " . $createdIssue->{'number'} . "\n";

}
