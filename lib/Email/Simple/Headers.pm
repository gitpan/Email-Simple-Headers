package Email::Simple::Headers;
use strict;

use vars qw[$VERSION];
$VERSION = '1.02';

package Email::Simple;
use strict;

sub headers { values %{ $_[0]->{header_names} } }

1;

__END__

=head1 NAME

Email::Simple::Headers - Get a List of Headers From Simple Objects

=head1 SYNOPSIS

  use Email::Simple;
  use Email::Simple::Headers;
  
  my $email = Email::Simple->new(<<'__MESSAGE__');
  From: casey@geeknest.com
  To: drain@example.com
  Subject: Message in a bottle
  
  HELP!
  __MESSAGE__
  
  print $email->header($_), "\n" for $email->headers;
  
=head1 DESCRIPTION

This software provides an instance method for
L<Email::Simple|Email::Simple> to get a list of headers.

=head2 Methods

=over 5

=item headers

  my @header_names = Email::Simple->headers;

This method returns the list of header names currently in the email
object. These names can be passed to the C<header()> method
one-at-a-time to get header values. You are guaranteed to get a set of
headers that are unique. You are not guaranteed to get the headers in
any order at all.

=back

=head1 SEE ALSO

L<Email::Simple>,
L<perl>.

=head1 AUTHOR

Casey West, <F<casey@geeknest.com>>.

=head1 COPYRIGHT

  Copyright (c) 2004 Casey West.  All rights reserved.
  This module is free software; you can redistribute it and/or modify it
  under the same terms as Perl itself.

=cut
