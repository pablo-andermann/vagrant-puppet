class php {

  package { ['php5-fpm', 'php5-cli', 'php5-gd']:
    ensure => present,
    require => Exec['apt-get update'],
  }

  service { 'php5-fpm':
    ensure => running,
    require => Package['php5-fpm'],
  }
	
  file { '/etc/php5/fpm/php.ini':
    source  => 'puppet:///modules/php/php.ini',
	mode    => '644',
	group   => 'root',
    require => Package['php5-fpm'],
    notify  => Service['php5-fpm'],
  }
}
