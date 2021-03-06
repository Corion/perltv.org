use strict;
use warnings;
use ExtUtils::MakeMaker;

# Normalize version strings like 6.30_02 to 6.3002,
# so that we can do numerical comparisons on it.
my $eumm_version = $ExtUtils::MakeMaker::VERSION;
$eumm_version =~ s/_//;

WriteMakefile(
	NAME                => 'PerlTV',
	AUTHOR              => q{YOUR NAME <youremail@example.com>},
	VERSION_FROM        => 'lib/PerlTV.pm',
	ABSTRACT            => 'YOUR APPLICATION ABSTRACT',
	($eumm_version >= 6.3001
		? ('LICENSE'=> 'perl')
		: ()),
	PL_FILES            => {},
	PREREQ_PM => {
		'Dancer2'                    => '0.10',
		'Getopt::Long'               => 0,
		'JSON::Tiny'                 => '0.41',
		'Path::Tiny'                 => 0,
		'Plack'                      => 0,
		'Pod::Usage'                 => 0,
		'Text::Markdown'             => 0,
		'WebService::GData::YouTube' => 0,
		'YAML::XS'                   => 0,
		'Template'                   => 0,
# for testing
		'Test::More'     => 0,
		'Carp::Always'   => 0,
	},
	dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
	clean               => { FILES => 'PerlTV-*' },
);
