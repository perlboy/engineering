#!/usr/bin/perl

use Net::GitHub;
use Data::Dumper;
use Text::ASCIITable;
use strict;
$|=1;

#####
# Very quick script to retrieve, parse and summarise github stats
# No warranty implied!
#####
my $orgName = 'ConsumerDataStandardsAustralia';
my $topUserCount = 10;


my $github = Net::GitHub->new(
	access_token => $ENV{'TOKEN'}
);

my $issueApi = $github->issue;
my $repoApi = $github->repos;

my @repos = $repoApi->list;

my %repoMap;

foreach my $oneRepo (@repos) {
    my $repoName = $oneRepo->{'name'};

    $repoMap{$repoName}{'watchers'} = $oneRepo->{'watchers_count'};

    # Set some defaults
    $github->set_default_user_repo($orgName, $repoName);
    $issueApi->set_default_user_repo($orgName, $repoName);
    $repoApi->set_default_user_repo($orgName, $repoName);

    print "Processing $repoName: ";

    while(my $oneIssue = $issueApi->next_repos_issue($orgName, $repoName, { state => 'all' })) {
        print "I" . $oneIssue->{'number'} . " ";
        $repoMap{$repoName}{'issue_count'}++;
        if($oneIssue->{'state'} eq 'open') {
            $repoMap{$repoName}{'open_issue_count'}++;
        }
        $repoMap{$repoName}{'issue_interactions'} += $oneIssue->{'comments'};
        chomp($oneIssue->{'user'}->{'login'});
        $repoMap{$repoName}{'contributors'}{$oneIssue->{'user'}->{'login'}}++;

        # Work through comments
        if($oneIssue->{'comments'} > 0) {
            while(my $oneComment = $issueApi->next_comment($oneIssue->{'number'})) {
                    print "C ";
                    chomp($oneComment->{'user'}->{'login'});
                    $repoMap{$repoName}{'contributors'}{$oneComment->{'user'}->{'login'}}++;
            }

        }
    }

    print " ";

    while(my $oneCommit = $repoApi->next_commit($orgName, $repoName)) {
        print "S";
        chomp($oneCommit->{'author'}->{'login'});
        if($oneCommit->{'author'}->{'login'} ne '') {
            $repoMap{$repoName}{'contributors'}{$oneCommit->{'author'}->{'login'}}++;
        }
        $repoMap{$repoName}{'commit_count'}++;
    }

    print "\n";

}

my $totalInteractions = 0;
my $totalIssues = 0;
my $totalRepositories = keys %repoMap;
my %userMap;
my $repoTable = Text::ASCIITable->new();
$repoTable->setCols(['Repo Name', 'Issues', 'Open Issues', 'Comments', 'Users', 'Commits']);
foreach my $oneRepo (keys %repoMap) {
    $totalIssues += $repoMap{$oneRepo}{'issue_count'};
    $totalInteractions += $repoMap{$oneRepo}{'issue_interactions'};
    my @contributorList = keys %{$repoMap{$oneRepo}{'contributors'}};
    foreach my $thisOneUser (@contributorList) {
        $userMap{$thisOneUser} += $repoMap{$oneRepo}{'contributors'}{$thisOneUser};
    }

    my %contributorsHash = %{$repoMap{$oneRepo}{'contributors'}};
    my $contributorCount = keys %contributorsHash;

    $repoTable->addRow(
        [
            $oneRepo,
            $repoMap{$oneRepo}{'issue_count'} || 0,
            $repoMap{$oneRepo}{'open_issue_count'} || 0,
            $repoMap{$oneRepo}{'issue_interactions'} || 0,
            $contributorCount || 0,
            $repoMap{$oneRepo}{'commit_count'} || 0
        ]
    );
}

my $totalUniqueUsers = keys %userMap;


#my @issues = $issueApi->issues();
#print Dumper(\@issues);

#print "Processing " . Dumper(\%repoMap) . "\n";

print qq~
------------------------------------------------
|         Quick GitHub Statistics              |
------------------------------------------------
~;

printf("Total Repositories: %d\n", $totalRepositories);
printf("Total Issues: %d\n", $totalIssues);
printf("Total Interaction Count: %d\n", $totalInteractions);
printf("Total Unique Contributor Count: %d\n", $totalUniqueUsers);

print qq~
------------------------------------------------
|    Per Repository Breakdown                  |
------------------------------------------------
~;

print $repoTable;

print qq~
------------------------------------------------
|    Top $topUserCount Contributors                       |
------------------------------------------------
~;

my @sortedUsers = sort { $userMap{$a} <=> $userMap{$b} } keys %userMap;
my $userTable = Text::ASCIITable->new();
$userTable->setCols(['Username', 'Contributions']);

my $topCount = 0;
foreach my $userName (reverse @sortedUsers) {
    if($topCount > $topUserCount) { last; }

    if($userName eq '') { next; }

    $userTable->addRow(
        [
            $userName,
            $userMap{$userName}
        ]
    );

    $topCount++;

}

print $userTable;


