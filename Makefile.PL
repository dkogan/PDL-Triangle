use strict;
use warnings;
use ExtUtils::MakeMaker;
use PDL::Core::Dev;

my @package = qw(Triangle.pd Triangle PDL::Triangle);
my %descriptor = pdlpp_stdargs(\@package);

$descriptor{VERSION}   = 0.01;
#$descriptor{OPTIMIZE}  = '-g',
$descriptor{OPTIMIZE}  = '-O3',
push @{$descriptor{LIBS}}, '-ltriangle';

WriteMakefile( %descriptor );

sub MY::postamble {
	pdlpp_postamble(\@package);
}

