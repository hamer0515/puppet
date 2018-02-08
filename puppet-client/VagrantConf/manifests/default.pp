#Quick Manifest to stand up a demo Puppet Master

node default {
  ##we copy rather than symlinking as puppet will manage this

  File {
    owner => vagrant,
    group => vagrant,
  }

  file {'/home/vagrant/.puppet':
    ensure => directory,
  }

  file {'/home/vagrant/.puppet/puppet.conf':
    ensure => present,
    source => "/vagrant/VagrantConf/puppet/puppet.conf",
    require => File['/home/vagrant/.puppet']
  }
}
