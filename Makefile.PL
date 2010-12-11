#
#  Task::BeLike::HMA::Catalyst - Makefile.PL
#
#  Copyright (c) 2010 Henning Manske. All rights reserved.
#
#  This program is free software. You can redistribute it and/or modify it
#  under the terms of either: the GNU General Public License as published
#  by the Free Software Foundation; or the Artistic License.
#
#  See http://dev.perl.org/licenses/
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#

use strict;
use warnings;

use inc::Module::Install 1.00;

my $task = 'Task::BeLike::HMA 0.05';
my $url  = 'https://github.com/hma/Task-BeLike-HMA';

unless (eval "use $task; 1") {
  print "*** $task not installed.\n"
    . "    Please install $task first.\n"
    . "    See: $url\n";
  exit;
}

# force Module::AutoInstall to use CPAN.pm

$ENV{PERL_AUTOINSTALL_PREFER_CPAN} = 1;



#
#  module metadata
#

my $NAME = 'Task::BeLike::HMA::Catalyst';

(my $dist = $NAME) =~ s|::|-|g;
(my $path = $NAME) =~ s|::|/|g;

name       $dist;
license    'perl';
all_from   "lib/$path.pm";

bugtracker "https://github.com/hma/$dist/issues";
repository "https://github.com/hma/$dist";

# Moose and friends

requires 'Moose'                                  => '1.17';
requires 'namespace::clean'                       => '0.18';
requires 'namespace::autoclean'                   => '0.09';
requires 'MooseX::Emulate::Class::Accessor::Fast' => '0.00901';
requires 'MooseX::Getopt'                         => '0.32';
requires 'MooseX::Types'                          => '0.22';
requires 'MooseX::Types::Common'                  => '0.001002';
requires 'MooseX::MethodAttributes'               => '0.24';
requires 'MooseX::Role::WithOverloading'          => '0.08';

# The Catalyst Framework Runtime

requires 'Catalyst::Runtime'                      => '5.80029';
requires 'Catalyst::Manual'                       => '5.8004';

# Catalyst extensions

requires 'Catalyst::Action::RenderView'           => '0.09';
requires 'Config::Any'                            => '0.19';
requires 'Catalyst::Plugin::ConfigLoader'         => '0.27';
requires 'Catalyst::Plugin::Static::Simple'       => '0.28';
requires 'JSON::Any'                              => '1.22';
requires 'Catalyst::View::JSON'                   => '0.30';
requires 'Catalyst::Model::Adaptor'               => '0.09';

# Catalyst Development Tools

requires 'Linux::Inotify2'                        => '1.2';
requires 'MooseX::Params::Validate'               => '0.13';
requires 'MooseX::SemiAffordanceAccessor'         => '0.06';
requires 'File::ChangeNotify'                     => '0.19';
requires 'File::Copy::Recursive'                  => '0.38';
requires 'File::ShareDir'                         => '1.00';
requires 'Template'                               => '2.22';
requires 'Pod::Usage'                             => '1.30';
requires 'Catalyst::Devel'                        => '1.28';

# Plack and friends

requires 'Plack'                                  => '0.9950';
requires 'Plack::Middleware::ReverseProxy'        => '0.05';
requires 'Catalyst::Engine::PSGI'                 => '0.11';
requires 'Net::Server'                            => '0.97';
requires 'Starman'                                => '0.2007';

build_requires 'Test::More';

clean_files "$dist-* Debian_CPANTS.txt";
makemaker_args dist => { COMPRESS => 'gzip -9f' };

auto_install;

WriteAll;
