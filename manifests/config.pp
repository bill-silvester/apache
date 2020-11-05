# @summary Configures Apache
#
# Configures Apache
#
# @example
#   include apache::config
class apache::config (
  $config_path   = $apache::params::config_path,
  $config_source = $apache::params::config_source,
  ) inherits apache::params {
  file { 'apache_config':
    path   => $config_path,
    source => $config_path,
    ensure => $apache::config_ensure,
    notify => Service['apache_service'],
  }
}
