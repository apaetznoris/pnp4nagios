require 'spec_helper'
describe 'pnp4nagios::config' do
  let(:node) { 'localhost' }
  let(:params) do {
    'perfdata_template' => 'process_perfdata.cfg.erb',
    'config_path'       => '/etc/pnp4nagios',
    'perfdata_config'   => 'process_perfdata.cfg'
  }
  end
  it { is_expected.to contain_file('process_perfdata.cfg').with('ensure' => 'present', 'path' => '/etc/pnp4nagios') }
end
