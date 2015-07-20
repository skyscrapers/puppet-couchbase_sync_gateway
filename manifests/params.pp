# Class: couchbase_sync_gateway::params
#
#
class couchbase_sync_gateway::params {
  $version             = '1.1.0'
  $edition             = 'community'
  $download_url_base   = 'http://packages.couchbase.com/releases/couchbase-sync-gateway'
  $ensure              = 'present'

# TODO: These params should be cased to check os
# For the moment I just hardcode for the version that I need

  $osname = '28'
  $installer       = 'dpkg'
  $pkgtype         = 'deb'
  $repository      = 'debian'
  $pkgarch         = '_x86_64'
  $pkgverspacer    = '_'

}