# @summary Installs Apache
#
# Installs Apache
#
# @example
#   include apache
class apache (
  $install_package = $apache::params::install_package,
  $service_name = $apache::params::service_name,
  $config_path = $apache::params::config_path,
  $config_source = $apache::params::config_source,
  $vhosts_dir = $apache::params::vhosts_dir,
  String $install_ensure,
  String $service_ensure,
  Boolean $service_enable,
  Boolean $service_hasrestart,
  String $config_ensure,
  String $vhosts_port,
  String $vhosts_root,
  String $vhosts_servername,
  String $vhosts_ensure,
  String $vhosts_root_ensure,
) inherits apache::params {
  contain apache::install
  contain apache::config
  contain apache::service
  contain apache::vhosts

  Class['apache::install']
  -> Class['apache::config']
  ~> Class['apache::service']
  -> Class['apache::vhosts']

}
