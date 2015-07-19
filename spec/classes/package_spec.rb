require 'spec_helper'

describe 'couchbase_sync_gateway::package' do

  context 'install couchbase_sync_gateway' do
    it { should contain_package('couchbase-sync-gateway')}
  end
end