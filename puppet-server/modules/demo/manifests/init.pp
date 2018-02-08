$top_variable = "top_variable"
class demo {
  notify { "message from elsewhere: $top_variable": }

  file { '/tmp/bbb':
    ensure => present,
  }
}
