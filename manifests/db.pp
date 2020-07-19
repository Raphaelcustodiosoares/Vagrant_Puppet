exec { "apt-update":
  command => "/usr/bin/apt-get update"
}

file { "/etc/mysql/conf.d/allow_external_create.cnf":
  owner => mysql,
  group => mysql,
  mode => 0644,
  content => "[mysqld]\n bind-address = 0.0.0.0",
  require => Package["mysql-server"],
}

file { "/etc/mysql/conf.d/allow_external_template.cnf":
owner => mysql,
group => mysql,
mode => 0644,
content => template("/vagrant/manifests/allow_ext.cnf"),
require => Package["mysql-server"],
}

file { "/etc/mysql/conf.d/restart_service.cnf":
owner => mysql,
group => mysql,
mode => 0644,
content => template("/vagrant/manifests/allow_ext.cnf"),
require => Package["mysql-server"],
notify => Service["mysql"],
}

service{"mysql":
  ensure => running,
  enable => true,
  hasstatus => true,
  hasrestart => true,
  require => Package["mysql-server"],
}



