class drush {

  package { 'drush':
    ensure => present,
    require => Exec['apt-get update'],
  }
}

