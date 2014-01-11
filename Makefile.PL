
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Automatically set a flag in the environment if a mobile client is detected",
  "AUTHOR" => "Heiko Jansen <hjansen\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Plack-Middleware-DetectMobileBrowsers",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Plack::Middleware::DetectMobileBrowsers",
  "PREREQ_PM" => {
    "Plack" => 0
  },
  "TEST_REQUIRES" => {},
  "VERSION" => "0.04",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Plack" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



