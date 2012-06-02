
/**
 * Import modules
 */



node default {

	include stdlib
	include apt
	include mc
	include zendserverce
	include mysql
	include phpmyadmin_zendserver

	zendserverce::vhost { 'virtual.dev':
		server_name	=> 'virtual.dev',
		serveraliases => [
			'local.virtual.dev',
			'basic-box.virtual.dev'
		],
	}

	zendserverce::vhost { 'exaple-site.com':
		server_name	=> 'exaple-site.com',
		serveraliases => [
			'www.exaple-site.com',
			'asset1.exaple-site.com',
			'asset2.exaple-site.com',
			'asset3.exaple-site.com',
			'asset4.exaple-site.com',
		],
	}

}