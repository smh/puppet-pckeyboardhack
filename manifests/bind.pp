# Public: Configures bindings for PCKeyboardHack
#
# Parameters:
#
#  mappings - a hash of mappings to set up. For instance: { 'control_l' => 80 }
#  user - the user to run as - defaults to $::boxen_user
define pckeyboardhack::bind(
  $mappings,
  $user = $::boxen_user
) {

  boxen::osx_defaults { 'pckeyboardhack::bind':
    ensure => 'present',
    domain => 'org.pqrs.PCKeyboardHack',
    key    => 'sysctl',
    type   => 'dict',
    value  => inline_template('<%= mappings.keys.map { |k| "enable_#{k} 1 keycode_#{k} #{mappings[k]}" }.join(" ") %>'),
    user   => $user
  }
}
