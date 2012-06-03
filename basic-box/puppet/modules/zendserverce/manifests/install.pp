
class zendserverce::install($php_version="5.2") {

  	# https://github.com/puppetlabs/puppetlabs-stdlib
	file_line { 'debian_package':
	   	path => '/etc/apt/sources.list',
	   	line => 'deb http://repos.zend.com/zend-server/deb server non-free'
	}

	exec { "zend_key":
		command => "wget http://repos.zend.com/zend.key -O- |apt-key add -",
		path => [
			"/usr/bin",
			"/usr/sbin"
		]
  	}

  	exec { "apt_update":
		command => "/usr/bin/apt-get update",
		require	=> [
			File_line['debian_package'],
			Exec["zend_key"]
		],
	}

	package { "zend-server-ce-php-$php_version":
       ensure => "latest",
       require	=> Exec["apt_update"]
  	}

  	file { "/var/www/index.php":
      source => "puppet:///modules/zendserverce/html/index.php",
      require => Package["zend-server-ce-php-$php_version"],
      replace => true
   	}

	file { "/var/www/index.html":
      require => Package["zend-server-ce-php-$php_version"],
      ensure => absent
   	}



}
