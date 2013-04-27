# configuration for pckeyboardhack
#
# $dmg_url - where to download the dmg
# $app - location of installed application
# $plist_path - location of plist
class pckeyboardhack::config {
  $dmg_url = 'http://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-9.0.0.dmg'
  $app = '/Applications/PCKeyboardHack.app'
  $plist_path = "/Users/${::boxen_user}/Library/Preferences/org.pqrs.PCKeyboardHack.plist"
}
