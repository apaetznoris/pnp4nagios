# pnp4nagios class

class pnp4nagios(
  
){

  class { 'pnp4nagios::package': } ->
  class { 'pnp4nagios::config': } ->
  class { 'pnp4nagios::service': }

}
