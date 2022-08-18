use strict;
use warnings;

use 5.009_001;

use ExtUtils::MakeMaker;
WriteMakefile(
  NAME             => 'convertUTC',
  AUTHOR           => 'David Betz <hashref@gmail.com>',
  VERSION_FROM     => 'script/convertUTC',
  ABSTRACT         => 'This is a UTC timestamp conversion tool.',
  LICENSE          => 'perl',
  MIN_PERL_VERSION => '5.9.1',
  PREREQ_PM        => {
    'Readonly'                   => '2.05',
    'Params::Validate'           => '1.30',
    'DateTime::Format::Strptime' => '1.79',
    'Types::Standard'            => '1.016007'
  },
  TEST_REQUIRES => {
    "Test2::V0"    => "0.000060",
    "Test::Script" => "1.29",
  },
  EXE_FILES  => ['script/convertUTC'],
  META_MERGE => {
    'meta-spec' => { version => 2 },
    resources   => {
      repository => {
        type => 'git',
        url  => 'https://github.com/hashref/perl_timestamp_convert.git',
        web  => 'https://github.com/hashref/perl_timestamp_convert',
      },
      bugtracker => { web => 'https://github.com/hashref/perl_timestamp_convert/issues' },
    },
  },
);
