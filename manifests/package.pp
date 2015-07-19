# Class: couchbase_sync_gateway::package
#
#
class couchbase_sync_gateway::package {

  package { 'couchbase-sync-gateway':
    ensure => installed,
  }

}