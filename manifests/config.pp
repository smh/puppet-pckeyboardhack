# configuration for pckeyboardhack
#
# $dmg_url - where to download the dmg
# $app - location of installed application
# $plist_path - location of plist
class pckeyboardhack::config {
  $version = '10.0.0'
  $base_url = 'https://pqrs.org/macosx/keyremap4macbook/files'
  $dmg_url = "${base_url}/PCKeyboardHack-${version}.dmg"
  $app = '/Applications/PCKeyboardHack.app'
  $plist_path = "/Users/${::boxen_user}/Library/Preferences/org.pqrs.PCKeyboardHack.plist"
}
