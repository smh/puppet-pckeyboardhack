# Public: Installs PCKeyboardHack 9.0.0
#
# Usage:
#
#   include pckeyboardhack
class pckeyboardhack {
  package { 'PCKeyboardHack':
    ensure   => installed,
    source   => 'http://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-9.0.0.dmg',
    provider => 'pkgdmg'
  }
}
