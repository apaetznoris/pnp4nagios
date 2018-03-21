# Class pnp4nagios::config
# it is expected that perfdate config is the only one important
# 
class pnp4nagios::config (
  $perfdata_template = 'process_perfdata.cfg.erb',
  $config = {},
  $perfdata_config = 'process_perfdata.cfg',
  $config_path = '/etc/pnp4nagoios',
){

  file { $perfdata_config:
    ensure  => 'present',
    path    => $config_path,
    content => template("pnp4nagios/${perfdata_template}"),
  }
}
