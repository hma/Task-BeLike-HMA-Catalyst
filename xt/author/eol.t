#!perl -T
#
#  xt/author/eol.t 0.01 hma Sep 16, 2010
#  Task-BeLike-HMA* customized version 0.01 hma Sep 17, 2010
#
#  Check the correct line endings in your project
#  RELEASE_TESTING only
#

use strict;
use warnings;

#  adopted Best Practice for Author Tests, as proposed by Adam Kennedy
#  http://use.perl.org/~Alias/journal/38822

BEGIN {
  my $MIN_PERL = 5.008;
  if (my $msg =
      ! $ENV{RELEASE_TESTING} ? 'Author tests not required for installation'
    : $] < $MIN_PERL          ? "Perl $MIN_PERL required"
    : undef
  ) {
    require Test::More;
    Test::More::plan( skip_all => $msg );
  }
}

my %MODULES = (
  'Test::EOL' => '0.9',
);

while (my ($module, $version) = each %MODULES) {
  $module .= ' ' . $version if $version;
  eval "use $module";
  die "Could not load required release testing module $module:\n$@" if $@;
}

my $options = { trailing_whitespace => 1 };

all_perl_files_ok($options, qw'lib t xt');

for my $filename (qw(
  .gitignore
  Changes
  Makefile.PL
  MANIFEST.SKIP
  README
)) {
  eol_unix_ok($filename, $options);
}
