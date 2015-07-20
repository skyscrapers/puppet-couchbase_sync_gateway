# Class: couchbase_sync_gateway::install
#
#
class couchbase_sync_gateway::install (
  $version           = $couchbase_sync_gateway::version,
  $edition           = $couchbase_sync_gateway::edition,
  $method            = $couchbase_sync_gateway::install_method,
  $download_url_base = $couchbase_sync_gateway::download_url_base
) {
  include couchbase_sync_gateway::params
  
  $pkgname_enterprise = "couchbase-sync-gateway-enterprise${::couchbase_sync_gateway::params::pkgverspacer}${version}-${::couchbase_sync_gateway::params::osname}${::couchbase_sync_gateway::params::pkgarch}.${::couchbase_sync_gateway::params::pkgtype}"
  $pkgname_community = "couchbase-sync-gateway-community${::couchbase_sync_gateway::params::pkgverspacer}${version}-${::couchbase_sync_gateway::params::osname}${::couchbase_sync_gateway::params::pkgarch}.${::couchbase_sync_gateway::params::pkgtype}"

  $pkgname = $edition ? {
        'enterprise' => $pkgname_enterprise,
        'community'  => $pkgname_community,
        default      => $pkgname_community,
    }

  $pkgsource = "${download_url_base}/${version}/${pkgname}"

  case $method {
    'curl': {
      exec { 'download_couchbase-sync-gateway':
        command => "curl -o /opt/${pkgname} ${pkgsource}",
        creates => "/opt/${pkgname}",
        path    => ['/usr/bin','/usr/sbin','/bin','/sbin'],
    }
    package {'couchbase-sync-gateway':
        ensure   => installed,
        name     => 'couchbase-sync-gateway',
        provider => $::couchbase_sync_gateway::params::installer,
        require  => Exec['download_couchbase-sync-gateway'],
        source   => "/opt/${pkgname}",
      }
    }
    'package': {
      package {'couchbase-sync-gateway':
        ensure  => $::couchbase_sync_gateway::version,
        name    => 'couchbase-sync-gateway',
      }
    }
    default: {
      fail ("${module_name} install_method must be 'package' or 'curl'")
    }
  }
}
