# @summary Configures Apache
#
# Configures Apache
#
# @example
#   include apache::config
class apache::config {
  file { 'apache_config':
    ensure => $apache::config_ensure,
    path   => $apache::config_path,
    source => $puppet:///modules/apache/${osfamily}.conf",
    notify => Service['apache_service'],
    mode   => '0664',
    owner  => 'root',
    group  => 'root',
  }
  @@host { "${hostname}":
    host_aliases => "$fqdn",
    ip           => "$ipaddress",
  }
}
