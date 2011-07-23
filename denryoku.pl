#!/usr/bin/perl
use strict;
use warnings;
use LWP::Simple;
use JSON qw/encode_json decode_json/;

my $data = decode_json(get('http://tepco-usage-api.appspot.com/latest.json'));

printf "%02dH %.1f", $data->{hour}, ( $data->{usage} / $data->{capacity} * 100 + 0.05 );
print '%';
