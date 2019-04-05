#!/usr/bin/perl

use Net::GitHub;
use Data::Dumper;
use Text::ASCIITable;
use strict;
$| = 1;

#####
# Very quick script to generate some markdown from sprint issues
# No warranty implied!
#####
my $orgName           = 'ConsumerDataStandardsAustralia';
my @repositoryList       = (
    'engineering', 'cds-models', 'cds-codegen'
);
my $targetSprint      = "Sprint #2";


die "Must supply TOKEN variable" if !$ENV{'TOKEN'};

my $github = Net::GitHub->new( access_token => $ENV{'TOKEN'} );

my $issueApi = $github->issue;
my $repoApi  = $github->repos;
use Data::Dumper;

my @repos = $repoApi->list;

my %repoMap;
    my $sprintTable = Text::ASCIITable->new();
    $sprintTable->setCols(
        [ 'Issue ID#', 'Task Name', 'Creator', 'Status', 'Assigned to' ] );

my $sprintDescription = $targetSprint;

foreach my $oneRepo (@repos) {
    my $repoName = $oneRepo->{'name'};

    if ( !grep( /^$repoName$/i, @repositoryList ) ) {
        next;
    }

    #print "Processing $repoName: \n";

    # Set some defaults
    $github->set_default_user_repo( $orgName, $repoName );
    $issueApi->set_default_user_repo( $orgName, $repoName );
    $repoApi->set_default_user_repo( $orgName, $repoName );



    while ( my $oneIssue =
        $issueApi->next_repos_issue( $orgName, $repoName, { state => 'all' } ) )
    {
        if( $oneIssue->{'milestone'}{'title'} eq $targetSprint) {
            my $issueId = "`#" . $repoName . "/" . $oneIssue->{'number'} . " <https://github.com/ConsumerDataStandardsAustralia/$repoName/issues/" . $oneIssue->{'number'} . ">`_";
            my $creatorLink = "`@" .  $oneIssue->{'user'}{'login'} . " <https://github.com/" .  $oneIssue->{'user'}{'login'} . ">`_";

            my $ownerLink;
            foreach my $oneAssignee (@{ $oneIssue->{'assignees'}}) {
                $ownerLink .= "`@" .  $oneAssignee->{'login'} . " <https://github.com/" .  $oneAssignee->{'login'} . ">`_ ";
            }
            $sprintTable->addRow( [ $issueId, $oneIssue->{'title'}, $creatorLink, $oneIssue->{'state'}, $ownerLink ] );

            if($repoName eq 'engineering') {
                $sprintDescription = $oneIssue->{'milestone'}{'description'};
            }
        }

    }

}
my $lowercaseMarker = lc($targetSprint);
$lowercaseMarker =~ s/ /\-/g;
$sprintTable->setOptions('drawRowLine',1);

my $sprintTableOutput = $sprintTable->draw( ['+','+','-','+'],  # +------+------+
                                            ['|','|','|'],      # | info | info |
                                            ['+','+','=','+'],  # +======+======+
                                            ['|','|','|'],      # | info | info |
                                            ['+','+','-','+']   # +------+------+
                                           );

print qq~
.. _${lowercaseMarker}:

$targetSprint
=================================================

$sprintDescription


Sprint Issue Breakdown
--------------------------------

$sprintTableOutput

Achievements
----------------

*Pending*

Retrospective
-----------------

*Pending*

    - What went well?
    - What needs improvement?
    - Next steps?


~;

