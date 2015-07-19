# Class: couchbase_sync_gateway::install
#
#
class couchbase_sync_gateway::install {

  package { 'couchbase-sync-gateway':
    ensure => installed,
  }

}