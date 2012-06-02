###############################################################################
#
# Zend Server CE 5.2 Puppet
#
# support: https://groups.google.com/forum/?fromgroups#!forum/virtualdev
# @autor Jaromir Muller, jaromir[dot]muller[at]gmail[dot]com
# @licence: OSL v3
#
###############################################################################

class phpmyadmin_zendserver {

   package { "phpmyadmin-zend-server":
       ensure => "latest",
       require => Class["zendserverce"]
   }

   file { "/usr/local/zend/etc/sites.d/http/__default__/0/phpmyadmin.conf":
      source => "puppet:///modules/phpmyadmin_zendserver/phpmyadmin.conf",
      require => Package["phpmyadmin-zend-server"]
   }

   file { "/usr/share/phpmyadmin/config.inc.php":
      source => "puppet:///modules/phpmyadmin_zendserver/config.inc.php",
      require => Package["phpmyadmin-zend-server"],
      mode => 644
   }

   exec { "/etc/init.d/zend-server restart":
   		require => File["/usr/local/zend/etc/sites.d/http/__default__/0/phpmyadmin.conf"],
   }

}