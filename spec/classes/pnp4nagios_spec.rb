require 'spec_helper'
describe 'pnp4nagios' do
  it { is_expected.to compile }
  it { is_expected.to contain_class('pnp4nagios::package') }
  it { is_expected.to contain_class('pnp4nagios::config') }
  it { is_expected.to contain_class('pnp4nagios::service') }
end
