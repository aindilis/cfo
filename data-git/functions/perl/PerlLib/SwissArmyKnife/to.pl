%% see /var/lib/myfrdcsa/codebases/minor/fe2c/sample.pl

md(git,git1).
md(gitForGitRootDir,git1,gitrootdir1).
md(gitRootDir,gitrootdir1,file2).
md(filename,file2,'/var/lib/myfrdcsas/versions/myfrdcsa-1.0/codebases/releases').

md(gitForRevision,git1,rev1).
md(gitRevision,rev1,'91b41711d44efd174a5422f598fb15c900413ed5').
md(filename,file1,'/var/lib/myfrdcsas/versions/myfrdcsa-1.0/codebases/releases/perllib-0.1/perllib-0.1/PerlLib/SwissArmyKnife.pm').

md(fileForRevFile,revfile1,file1).
md(gitRevisionForRevFile,revfile1,rev1).
md(sourceFile,text1,file1).
md(text,text1,'sub ListFilesInDirectory {
  my (%args) = @_;
  my $directory = $args{Directory};
  my @matches;
  if (-d $directory) {
    my $results = File::DirList::list($directory,'n',0,0,0);
    foreach my $entry (@$results) {
      my $filename = $entry->[13];
      if ($args{NoSubdirectories}) {
	if ($entry->[14] == 0) {
	  push @matches, $filename;
	}
      } elsif ($args{OnlySubdirectories}) {
	if ($entry->[14] == 1) {
	  push @matches, $filename;
	}
      } else {
	push @matches, $filename;
      }
    }
    if ($args{ResultType} eq 'hash') {
      my $hash;
      foreach my $file (@matches) {
	$hash->{$file} = 1;
      }
      return
	{
	 Success => 1,
	 Results => $hash,
	};

    } else {
      return
	{
	 Success => 1,
	 Results => \@matches,
	};
    }
  } else {
    FixMe("throw error about directory not existing.");
  }
}'
       ).
md(revFileText,revfiletext1,revfile1).
md(textForRevFileText,revfiletext1,text1).
md(startPos,revfiletext1,7897).
md(endPos,revfiletext1,8730).

textContainsObject(revfiletext1,perlNamedFunction1).

textContainsObject(revfiletext2,perlNamedFunction2).

isa(perlNamedFunction1,perlNamedFunction).
isa(perlNamedFunction2,perlNamedFunction).

backwardlyCompatible(perlNamedFunction2,perlNamedFunction1).


%% CONTEXT INFO
md(immediatelyFollows,revFileText1,revFileText0).
md(immediatelyFollows,revFileText2,revFileText1).

%% now do typical sayer type stuff.  write a prolog version of sayer2.


%% then have another revision