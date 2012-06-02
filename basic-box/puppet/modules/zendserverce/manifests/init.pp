###############################################################################
#
# Zend Server CE 5.2 Puppet
#
# support: https://groups.google.com/forum/?fromgroups#!forum/virtualdev
# @autor Jaromir Muller, jaromir[dot]muller[at]gmail[dot]com
# @licence: OSL v3
#
###############################################################################

class zendserverce_step1 {

	# https://github.com/puppetlabs/puppetlabs-stdlib
	file_line { 'debian_package':
	   	path => '/etc/apt/sources.list',
	   	line => 'deb http://repos.zend.com/zend-server/deb server non-free'
	}

	exec { "zend_key":
		command => "wget http://repos.zend.com/zend.key -O- |apt-key add -",
		path => ["/usr/bin", "/usr/sbin"]
  	}

}

class zendserverce_step2 {

  	exec { "apt_update":
		command => "/usr/bin/apt-get update"
	}

}

class zendserverce_main {

	package { "zend-server-ce-php-5.2":
       ensure => "latest"
   	}

}

class zendserverce {

	stage { 'step1': before => Stage['step2'] }
	stage { 'step2': before => Stage['main'] }

	class{
		"zendserverce_step1" : stage => 'step1';
	    "zendserverce_step2" : stage => 'step2';
	    "zendserverce_main"	 : stage => 'main';
    }

	include zendserverce_step1
	include zendserverce_step2
	include zendserverce_main

}

