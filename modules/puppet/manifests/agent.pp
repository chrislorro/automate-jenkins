# Puppet agent
# @api private
class puppet::agent {
  contain puppet::agent::install
  contain puppet::agent::config
  contain puppet::agent::service

  Class['puppet::config', 'puppet::agent::config'] ~> Class['puppet::agent::service']
  Class['puppet::config', 'puppet::agent::config'] ~> Class['puppet::agent::service']
}
