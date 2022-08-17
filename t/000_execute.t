#!/usr/bin/env perl

use strict;
use warnings;

use Test2::V0;
use Test::Script;

my $SCRIPT_PATH = './script/convertUTC';

plan(5);

script_compiles( $SCRIPT_PATH, 'script compiles' );

# Test Command Line Options
script_runs( [ $SCRIPT_PATH, '-h' ], '-h option works' );
script_fails( [ $SCRIPT_PATH, '-t' ], { exit => 1 }, '-t fails with no timestamp' );
script_runs( [ $SCRIPT_PATH, '-t', '2022-01-01T00:00:00' ], '-t option works' );

my $OUTPUT = <<~ "EOF";
2022-01-01T00:00:00 UTC  | UTC
2021-12-31T16:00:00 PST  | America/Los_Angeles
2022-01-01T08:00:00 CST  | Asia/Taipei
2022-01-01T08:00:00 HKT  | Asia/Hong_Kong
2022-01-01T11:00:00 AEDT | Australia/Sydney
EOF

script_stdout_like( $OUTPUT, 'vaild output' );

done_testing();
