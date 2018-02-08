class hosts {
  host { 'test.host.com':
    ensure => present,
    ip => '192.168.1.1',
  }
}
