use Test;
use OpenSSL::Digest;

plan 3;

my $test-str = "foo bar";
my $test-buf = $test-str.encode: 'ascii';
my $sha1 = [~] .list».fmt: "%02x" given sha1 $test-buf;
my $sha256 = [~] .list».fmt: "%02x" given sha256 $test-buf;

is $sha1, '3773dea65156909838fa6c22825cafe090ff8030', "sha1";
is $sha256, 'fbc1a9f858ea9e177916964bd88c3d37b91a1e84412765e29950777f265c4b75', "sha256";

is md5('abc'.encode: 'ascii').list».fmt("%02x").join, '900150983cd24fb0d6963f7d28e17f72', "md5";

# vim: ft=perl6
