# == Class: isy994
#
# Full description of class isy994 here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
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
class isy994::params { 
  $isy_root     = undef
  $version      = '4.2.8'
  $admin_jnlp   = "http://isy.universal-devices.com/994i/${version}/admin.jnlp"
  $admin16_jnlp = "http://isy.universal-devices.com/994i/${version}/admin16.jnlp"
  $dashboard_jnlp = "http://isy.universal-devices.com/994i/${version}/dashboard.jnlp"
  $dashboard16_jnlp = "http://isy.universal-devices.com/994i/${version}/dashboard16.jnlp"
#  $firmware_994i_zwave = "http://isy.universal-devices.com/updates/Insteon_UD994/4.2.28/insteon_4.2.28.zip"
  $firmware_994i_zwave = "http://isy.universal-devices.com/updates/Insteon_UD994/${version}/insteon_${version}.zip"
#  $firmware_994i_zibee = "http://isy.universal-devices.com/updates/Insteon_UD994_OADR/4.2.28/udi_oadr_4.2.28.zip"
  $firmware_994i_zibee = "http://isy.universal-devices.com/updates/Insteon_UD994_OADR/$version/udi_oadr_${version}.zip"
}
