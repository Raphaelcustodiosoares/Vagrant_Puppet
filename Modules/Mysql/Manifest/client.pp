class mysql::client{
 exec {"apt-update":
  command => "/usr/bin/apt-get/"
 }


 package {"mysql-client":
  ensure => installed,
  requiere => Exec ["apt-update"],
 }
}
