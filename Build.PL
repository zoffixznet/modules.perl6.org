use strict;
use Module::Build;

my $build = Module::Build->new(
    dist_name          => 'perl6.modules.org',
    dist_author        => 'Perl 6 Hackers',
    license            => 'perl',
    create_makefile_pl => 'passthrough',

    dist_version => '0.1',

    # and now the list of perl module dependencies
    requires => {
        'HTML::Template'  => 0,
        'Mojolicious'     => 0,
        'YAML'            => 0,
        'IO::Socket::SSL'                => '1.94',
        'Mojolicious::Plugin::AssetPack' => '0.68',
        'Imager::File::PNG'              => '0.92',
    }
);
$build->create_build_script;
