# Class pnp4nagios::package
# installs package pnp4nagios - provider depends on os.family

class pnp4nagios::package {
   
   $provider = $facts['os']['family'] ? {
    /(RedHat|CentOS)/ => 'yum',
    /(Debian|Ubuntu)/ => 'apt',
    default           => fail('Unsupported platform: neither RedHat/CentOS nor Debian/Ubuntu')
  }

  package { 'pnp4nagios':
    ensure   => 'present',
    provider => $provider,
  }
}
