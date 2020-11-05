# @summary Manages the Apache daemon
#
# Manages the Apache daemon
#
# @example
#   include apache::service
class apache::service (
  $service_name = $apache::params::service_name
) inherits apache::params {
  service { 'apache_service':
    name       => $service_name,
    ensure     => $apache::service_ensure,
    ensure     => $apache::service_enable,
    hasrestart => $apache::service_hasrestart,
  } 
}
