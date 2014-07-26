class repos {
  file { '/etc/yum.repos.d/CentOS-Base.repo':
    source => 'puppet:///modules/repos/CentOS-Base.repo',
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
}
