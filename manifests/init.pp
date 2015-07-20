# Class: couchbase_sync_gateway
#
#
class couchbase_sync_gateway
(
  $version           = $::couchbase_sync_gateway::params::version,
  $edition           = $::couchbase_sync_gateway::params::edition,
  $install_method    = 'curl',
  $ensure            = 'present',
  $download_url_base = $::couchbase_sync_gateway::params::download_url_base,
) inherits ::couchbase_sync_gateway::params {

  class {'couchbase_sync_gateway::install':
      version           => $version,
      edition           => $edition,
      download_url_base => $download_url_base,
  }

}