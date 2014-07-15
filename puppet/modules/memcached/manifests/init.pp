class memcached {

  package { ['php5-memcached', 'memcached']:
    ensure => present,
    require => Exec['apt-get update'],
    notify  => Service['nginx'],
  }
  
  file { '/etc/memcached.conf':
    source  => 'puppet:///modules/memcached/memcached.conf',
	mode    => '644',
	group   => 'root',
    require => Package['memcached'],
    notify  => Service['nginx'],
  }

}
