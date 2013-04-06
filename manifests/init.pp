# Public: Installs PCKeyboardHack 9.0.0
#
# Usage:
#
#   include pckeyboardhack
class pckeyboardhack {
  include pckeyboardhack::config

  package { 'PCKeyboardHack':
    ensure   => installed,
    source   => $pckeyboardhack::config::dmg_url,
    provider => 'pkgdmg'
  }
}
