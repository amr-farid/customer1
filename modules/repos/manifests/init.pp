class puppet {
  file { '/usr/local/bin/papply':
    source => 'puppet:///modules/puppet/papply.sh',
    mode => '0755',
  }
  file { '/etc/yum.repos.d/CentOS-Base.repo':
    source => 'puppet:///modules/puppet/CentOS-Base.repo',
    owner => root, 
    mode => '0755',
  }
 cron { 'update':
   ensure => 'present',
   user => 'root',
   command => '/usr/bin/yum update  -y',
   minute => '*/20',
   hour => '*',
  }
 cron { 'papply':
   ensure => 'present',
   user => 'root',
   command => '/usr/local/bin/papply',
   minute => '*/30',
   hour => '*',
  }
}
