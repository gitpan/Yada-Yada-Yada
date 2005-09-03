package Yada::Yada::Yada;

=head1 NAME

Yada::Yada::Yada - defer coding to later

=head1 SYNOPSIS

  use Yada::Yada::Yada;

  if ($something_is_true) {
    ... # I'll fill this in later.
  }

=head1 DESCRIPTION

For Perl 6 we've been promised a "yada yada yada" operator, which makes
'...' valid syntax for "I'll fill this bit in later.", allowing the code
to compile, but issue a run-time warning.

But, like many of the other things that may or may not happen in Perl 6,
we can already make this happen in Perl 5.

All you need is to 'use Yada::Yada::Yada' and off you go ...

=head1 AUTHOR

Tony Bowden

=head1 BUGS and QUERIES

Please direct all correspondence regarding this module to:
  bug-Yada-Yada-Yada@rt.cpan.org

=head1 COPYRIGHT

  Copyright (C) 2001-2005 Tony Bowden.

  This program is free software; you can redistribute it and/or modify it under
  the terms of the GNU General Public License; either version 2 of the License,
  or (at your option) any later version.

  This program is distributed in the hope that it will be useful, but WITHOUT
  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
  FOR A PARTICULAR PURPOSE.

=cut

$VERSION = '1.00';

use strict;

use Filter::Simple;

FILTER_ONLY code => 
 sub{ s/\.{3}/;require Carp; Carp::carp("Not implemented");/gsmo };

1;
