default['ossec']['conf']['wodle'] = [
    {   '@name' => 'open-scap',
        'disabled' => 'yes',
        'timeout' => '1800',
        'interval' => '1d',
        'scan-on-start' => 'yes'
     },
     {   '@name' => 'cis-cat',
        'disabled' => 'yes',
        'timeout' => '1800',
        'interval' => '1d',
        'scan-on-start' => 'yes',
        'java_path' => 'wodles/java',
        'ciscat_path' => 'wodles/ciscat'
     },
     {   '@name' => 'osquery',
        'disabled' => 'yes',
        'run_daemon' => 'yes',
        'log_path' => '/var/log/osquery/osqueryd.results.log',
        'config_path' => '/etc/osquery/osquery.conf',
        'add_labels' => 'yes'
     },
     {   '@name' => 'syscollector',
        'disabled' => 'no',
        'interval' => '1d',
        'scan_on_start' => 'yes',
        'hardware' => 'yes',
        'os' => 'yes',
        'network' => 'yes',
        'packages' => 'yes',
        'ports' => { '@all' => 'no', 'content!' => 'yes'},
        'processes' => 'yes'
     },
     {   '@name' => 'vulnerability-detector',
        'disabled' => 'yes',
        'interval' => '5m',
        'ignore_time' => '6h',
        'run_on_start' => 'yes',
        'feed' => [
            {   '@name' => "ubuntu-18",
                'disabled' => "yes",
                'update_interval' => '1h'
            },
            {   '@name' => "redhat",
                'disabled' => "yes",
                'update_from_year' => '2010',
                'update_interval' => '1h'
            },
            {   '@name' => "debian-9",
                'disabled' => "yes",
                'update_interval' => '1h'
            }
        ]
    }
]