use Test::More qw[no_plan];
use strict;
$^W = 1;

use_ok 'Email::Simple';
use_ok 'Email::Simple::Headers';

my $email = Email::Simple->new(<<'__MESSAGE__');
From: casey@geeknest.com
To: drain@example.com
Subject: Message in a bottle
__MESSAGE__

can_ok $email, 'headers';

ok eq_set( [qw[From To Subject]], [$email->headers] ), 'have expected headers';
