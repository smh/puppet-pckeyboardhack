# Public: Configures bindings for PCKeyboardHack
#
# Parameters:
#
#  mappings - a hash of mappings to set up. For instance: { 'control_l' => 80 }
define pckeyboardhack::bind($mappings) {

  property_list_key { 'pckeyboardhack::bind':
    ensure     => 'present',
    path       => '~/Library/Preferences/org.pqrs.PCKeyboardHack.plist',
    key        => 'sysctl',
    value      => expand_binding($mappings),
    value_type => 'hash'
  }
}
