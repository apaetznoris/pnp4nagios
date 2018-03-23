# pnp4nagios class

class pnp4nagios(
  $pnp_config = {}
) {

  class { 'pnp4nagios::package': } ->
  class { 'pnp4nagios::config': 
    config => $pnp_config
  } ->
  class { 'pnp4nagios::service': }
}
