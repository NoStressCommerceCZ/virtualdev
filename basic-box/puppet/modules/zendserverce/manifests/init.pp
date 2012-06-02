###############################################################################
#
# Zend Server CE 5.2 Puppet
#
# support: https://groups.google.com/forum/?fromgroups#!forum/virtualdev
# @autor Jaromir Muller, jaromir[dot]muller[at]gmail[dot]com
# @licence: OSL v3
#
###############################################################################



class zendserverce {

	include zendserverce::install
	include zendserverce::service

}

