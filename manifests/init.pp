# Public: Installs PCKeyboardHack 9.0.0
#
# Usage:
#
#   include pckeyboardhack
class pckeyboardhack {
  include pckeyboardhack::config

  package { "PCKeyboardHack_${pckeyboardhack::config::version}":
    ensure   => installed,
    source   => $pckeyboardhack::config::dmg_url,
    provider => 'pkgdmg'
  }
}
