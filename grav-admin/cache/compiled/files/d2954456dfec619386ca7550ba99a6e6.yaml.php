<?php
return [
    '@class' => 'Grav\\Common\\File\\CompiledYamlFile',
    'filename' => '/var/www/html/user/config/site.yaml',
    'modified' => 1487418403,
    'data' => [
        'title' => 'VGF Wittesheim',
        'author' => [
            'name' => 'Tobias Schneck',
            'email' => 'grandmastertobi@gmx.de'
        ],
        'taxonomies' => [
            0 => 'category',
            1 => 'tag'
        ],
        'metadata' => [
            'description' => 'VGF Wittesheim - Sportlich - Aktive - Gesellig'
        ],
        'summary' => [
            'enabled' => true,
            'format' => 'short',
            'size' => 300,
            'delimiter' => '==='
        ],
        'blog' => [
            'route' => '/blog'
        ]
    ]
];
