class mysql::server{
exec { "apt-update":
  command => "/usr/bin/apt-get update"
}
package { "mysql-server":
  ensure => installed,
  require => Exec["apt-update"],
}
file { "/etc/mysql/conf.d/allow_external_create.cnf":
  owner => mysql,
  group => mysql,
  mode => 0644,
  content => template ("mysql/allow_external_create"),
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

exec { "remove-anonymous-user":
  command => "mysql -uroot -e "DELETE FROM mysql.user WHERE user=’’; FLUSH PRIVILEGES "",
  onlyif => "mysql -u’ ’",
  path => "/usr/bin",
  require => Service["mysql"],
}

}

define mysql::db($schema, $user = $title , $password){
  Class['mysql::server'] -> Mysql::db[$title]

exec { "$title-schema":
  unless => "mysql -uroot $schema",
  command => "mysqladmin -uroot create $schema",
  path => "/usr/bin/",
}

exec { "$title-user":
  unless => "mysql -uloja -plojasecret loja_schema",
  command => "mysql -uroot -e "GRANT ALL PRIVILEGES ON loja_schema.* TO ’loja’@’%’ IDENTIFIED BY ’lojasecret’;"",
  path => "/usr/bin/",
  require => Exec["title-schema"],
}

}
