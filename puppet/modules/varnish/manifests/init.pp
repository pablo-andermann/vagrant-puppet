class varnish {

  package { 'varnish':
    ensure => present,
    require => Exec['apt-get update'],
  }
  
  file { '/etc/default/varnish':
    source  => 'puppet:///modules/varnish/varnish',
    mode    => '644',
    group   => 'root',
    require => Package['varnish'],
  }

  file { '/etc/varnish/default.vcl':
    source  => 'puppet:///modules/varnish/default.vcl',
    mode    => '644',
    group   => 'root',
    require => Package['varnish'],
  }

}
