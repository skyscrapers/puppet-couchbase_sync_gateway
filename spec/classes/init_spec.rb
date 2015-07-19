require 'spec_helper'

describe "couchbase_sync_gateway" do
  it { should create_class('couchbase_sync_gateway::package')}
end