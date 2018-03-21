require 'spec_helper'
describe 'pnp4nagios::service' do
  let (:node) { 'localhost' }
  it { is_expected.to contain_service('pnp_gearman_worker').with('ensure' => 'running', 'provider' => 'systemd', 'hasstatus' => true, 'hasrestart' => true) }
end

