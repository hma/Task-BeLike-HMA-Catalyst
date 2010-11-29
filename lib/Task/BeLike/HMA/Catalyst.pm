package Task::BeLike::HMA::Catalyst;

use strict;
use warnings;

use 5.008004;

our $VERSION = '0.02_01';

$VERSION = eval $VERSION;

1;

__END__

=head1 NAME

Task::BeLike::HMA::Catalyst - HMA's Catalyst SDK

=head1 VERSION

This is version 0.02_01 of Task::BeLike::HMA::Catalyst as of Nov 29, 2010.

=head1 SYNOPSIS

  perl Makefile.PL
  make

  # re-run Makefile.PL to see if all modules got installed
  perl Makefile.PL

  # make test and install if you want (not required)
  make test
  make install

=head1 DESCRIPTION

Task::BeLike::HMA::Catalyst is HMA's personal L<Task> to install a Catalyst
development environment the way he likes.

See C<Makefile.PL> for details.

=head1 DEPENDENCIES

=over 4

=item * L<Task::BeLike::HMA 0.05+|http://github.com/hma/Task-BeLike-HMA>

=back

=head1 SEE ALSO

=over 4

=item * L<Catalyst Web Framework|http://www.catalystframework.org/>

=item * L<PSGI/Plack|http://plackperl.org/>

=item * L<Task|http://search.cpan.org/perldoc?Task>

=item * L<Task::Catalyst|http://search.cpan.org/perldoc?Task::Catalyst>

=back

=head1 AUTHOR

Henning Manske <hma@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright (c) 2010 Henning Manske. All rights reserved.

This module is free software. You can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See L<http://dev.perl.org/licenses/>.

This module is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

=cut
