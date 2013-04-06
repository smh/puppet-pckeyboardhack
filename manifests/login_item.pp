# Public: sets up PCKeyboardHack to launch on login
#
# Will add a login item and launch the application.
#
# Usage:
#
#   include pckeyboardhack::login_item
#
# or to remove login-item:
#
#   class { 'pckeyboardhack::login_item':
#     ensure => 'absent'
#   }
#
# Parameters:
#
#   ensure - 'present' or 'absent'. Defaults to 'present'.
class pckeyboardhack::login_item($ensure = 'present') {
  include pckeyboardhack::config

  osx_login_item { 'PCKeyboardHack':
    ensure  => $ensure,
    path    => $pckeyboardhack::config::app,
    require => Package['PCKeyboardHack']
  }

  exec { 'launch pckeyboardhack':
    command     => "/usr/bin/open ${pckeyboardhack::config::app}",
    refreshonly => true,
    subscribe   => Package['PCKeyboardHack'],
    require     => Osx_login_item['PCKeyboardHack']
  }
}

