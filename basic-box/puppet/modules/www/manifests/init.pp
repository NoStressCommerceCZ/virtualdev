class www {

	file { "/home/vagrant/www/":
		ensure => "directory",
	}

	file { "/usr/local/zend/etc/sites.d/http/__default__/0/virtualdev-www.conf":
      source => "puppet:///modules/www/conf/virtualdev-www.conf",
      require => File["/home/vagrant/www"],
      notify	=> Service["zend-server"]
   	}

   	file { "/home/vagrant/www/index.php":
      source => "puppet:///modules/www/html/index.php",
      require => File["/home/vagrant/www"]
   	}

	file { "/home/vagrant/www/index.html":
      source => "puppet:///modules/www/html/index.html",
      require => File["/home/vagrant/www"]
   	}


}
