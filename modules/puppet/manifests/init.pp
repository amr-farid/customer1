class puppet {
  file { '/usr/local/bin/papply':
    source => 'puppet:///modules/puppet/papply.sh',
    mode => '0755',
  }
 cron { 'papply':
   ensure => 'present',
   user => 'root',
   command => '/usr/local/bin/papply',
   minute => '*/30',
   hour => '*',
  }
}
