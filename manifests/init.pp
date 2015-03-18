# == Class: isy994
#
# Full description of class isy994 here.
#
# === Parameters
#
# Document parameters here.
#
# [*isy_root*]
# [*version*]
# [*admin_jnlp*]
# [*admin16_jnlp*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'isy994':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class isy994 (
  $isy_root     = $isy994::params::isy_root
  $version      = $isy994::params::version
  $admin_jnlp   = $isy944::params::admin_jnlp_url
  $admin16_jnlp = $isy944::params::admin16_jnlp_url

) inherits isy994::params {


  staging::file{"admin.jnlp-${version}":
    target => "${isy_root}/${version}/admin.jnlp"
    source => $admin_jnlp
  }
  staging::file{"admin16.jnlp-${version}":
    target => "${isy_root}/${version}/admin16.jnlp"
    source => $admin16_jnlp
  }


}

}
