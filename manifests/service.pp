# Class: couchbase_sync_gateway::service
#
#
class couchbase_sync_gateway::service {
      file {
      '/etc/init.d/couchbase-sync-gateway':
        source  => 'puppet:///modules/couchbase_sync_gateway/etc/init.d/couchbase-sync-gateway',
        ensure   => file,
        mode     => '0755',
        owner    => root,
        group    => root,

      }
         
}   