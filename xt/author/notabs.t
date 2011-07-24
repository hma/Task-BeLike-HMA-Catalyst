#!perl -T
#
#  xt/author/notabs.t 0.01 hma Sep 16, 2010
#  Task-BeLike-HMA* customized version 0.02 hma Jul 24, 2011
#
#  Check the presence of tabs in your project
#  RELEASE_TESTING only
#

use strict;
use warnings;

#  adopted Best Practice for Author Tests, as proposed by Adam Kennedy
#  http://use.perl.org/~Alias/journal/38822

BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan( skip_all => 'Author tests not required for installation' );
  }
}

my %MODULES = (
  'Test::NoTabs' => '1.0',
);

while (my ($module, $version) = each %MODULES) {
  $module .= ' ' . $version if $version;
  eval "use $module";
  die "Could not load required release testing module $module:\n$@" if $@;
}

all_perl_files_ok(qw'lib t xt');

for my $filename (qw(
  .gitignore
  Changes
  Makefile.PL
  MANIFEST.SKIP
  README.md
)) {
  notabs_ok($filename);
}
