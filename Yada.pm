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

Tony Bowden, E<lt>kasei@tmtm.comE<gt>.

=head1 COPYRIGHT

Copyright (C) 2001 Tony Bowden. All rights reserved.

This module is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

use vars qw/$VERSION/;
$VERSION = '0.02';

use Filter::Simple;

FILTER_ONLY code => 
 sub{ s/\.{3}/;require Carp; Carp::carp("Not implemented");/gsmo };

1;
