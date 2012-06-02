
define zendserverce::vhost(
	$server_name='www.example.com',
	$docroot_all='/var/www',
	$template='zendserverce/vhost.conf.erb',
	$port='80',
	$serveraliases='',

) {

  include zendserverce

  $docroot = "${docroot_all}/${server_name}"

  file { ["${docroot}"]:
  	ensure => "directory",
  	owner => 'root',
    group => 'root',
    mode => '777',
    recurse => true,
    require	=> Class["zendserverce::install"]
  }

  file {"/usr/local/zend/etc/sites.d/vhost_${server_name}.conf":
    content => template($template),
    owner => 'root',
    group => 'root',
    mode => '777',
    require => [
    	Class["zendserverce::install"],
    	File["${docroot}"]
    ],
    notify => Class["zendserverce::service"],
  }
}
