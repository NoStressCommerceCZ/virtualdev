class apt_updates {
  	# Run apt-get update when anything beneath /etc/apt/ changes
	exec { "apt-get update":
		command => "/usr/bin/apt-get update",
		onlyif => "/bin/sh -c '[ ! -f /var/cache/apt/pkgcache.bin ] || /usr/bin/find /etc/apt/* -cnewer /var/cache/apt/pkgcache.bin | /bin/grep . > /dev/null'",
	}
}

class zendserverce {

	# https://github.com/puppetlabs/puppetlabs-stdlib
	file_line { 'debian_package':
	   	path => '/etc/apt/sources.list',
	   	line => 'deb http://repos.zend.com/zend-server/deb server non-free'
	}

	exec { "wget http://repos.zend.com/zend.key -O- |apt-key add -":
	    path => ["/usr/bin", "/usr/sbin"]
  	}

    package { "zend-server-ce-php-5.2":
       require => class["apt_updates"],
       ensure => "latest"
   	}

}

