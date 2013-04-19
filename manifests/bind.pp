# Public: Configures bindings for PCKeyboardHack
#
# Parameters:
#
#  mappings - a hash of mappings to set up. For instance: { 'control_l' => 80 }
define pckeyboardhack::bind($mappings) {
  include pckeyboardhack::config

  property_list_key { 'pckeyboardhack::bind':
    ensure     => 'present',
    path       => $pckeyboardhack::config::plist_path,
    key        => 'sysctl',
    value      => expand_binding($mappings),
    value_type => 'hash'
  }

  exec { "chown ${::boxen_user} ${pckeyboardhack::config::plist_path}":
    command => "chown ${::boxen_user} ${pckeyboardhack::config::plist_path}",
    require => Property_list_key['pckeyboardhack::bind']
  }
}
