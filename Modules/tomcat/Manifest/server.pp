class tomcat::server{

package {"tomcat7":
  ensure: installed,
  requiere => Exec ["apt-update"],
}


file { "/etc/default/tomcat7":
  owner => root,
  group => root,
  mode => 0644,
  source => "/vagrant/manifests/tomcat7",
  require => Package["tomcat7"],
  notify => Service["tomcat7"],
}

service { "tomcat7":
ensure => running,
enable => true,
hasstatus => true,
hasrestart => true,
require => Package["tomcat7"],
}
}

