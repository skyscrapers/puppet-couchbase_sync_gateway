require 'spec_helper'

describe 'couchbase_sync_gateway::install' do

  context 'install couchbase_sync_gateway' do
    it { should contain_package('couchbase-sync-gateway')}
  end
end