# Class: mysql
#
#   This class installs mysql client software.
#
# Parameters:
#   [*client_package_name*]  - The name of the mysql client package.
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class mysql (
  $package_client_name   = $mysql::params::client_package_name,
  $package_server_name   = $mysql::params::server_package_name,
  $package_ensure = 'present'
) inherits mysql::params {

  package { 'mysql_client':
    name    => $package_client_name,
    ensure  => $package_ensure,
  }

  package { 'mysql_server':
    name    => $package_server_name,
    ensure  => $package_ensure,
  }

}
