require 'spec_helper'
describe 'pnp4nagios::package' do
  let(:node) { 'localhost' }
    it { is_expected.to contain_package('pnp4nagios').with('ensure' => 'present') }
end 
