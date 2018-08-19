# Create an Kibana class
class chassis_kibana (
	$config
) {
	class { 'kibana':
	  config => {
		'server.host' => '0.0.0.0',
		'xpack.security.enabled' => 'false',
	  },
	  ensure => '5.6.1'
	}
}
