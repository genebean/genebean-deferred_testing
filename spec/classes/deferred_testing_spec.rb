require 'spec_helper'
require_relative '../fixtures/modules/node_encrypt/lib/puppet_x/binford2k/node_encrypt.rb'

Puppet_X::Binford2k::NodeEncrypt.stubs(:encrypt).returns('encrypted')
Puppet_X::Binford2k::NodeEncrypt.stubs(:decrypt).returns('decrypted')

describe 'deferred_testing' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }
    end
  end
end
