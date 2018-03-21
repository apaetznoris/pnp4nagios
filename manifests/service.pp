# class pnp4nagios::service
# perfdata perl scripts have to run as a daemon

class pnp4nagios::service (
  $service_name = 'pnp_gearman_worker',
  $service_provider = 'systemd',
  $service_hasstatus = true,
  $service_hasrestart = true,
){
  service { $service_name:
    ensure     => running,
    hasstatus  => $service_hasstatus,
    hasrestart => $service_hasrestart,
    provider   => $service_provider,
  }
}
