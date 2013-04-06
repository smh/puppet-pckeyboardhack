# PCKeyboardHack Puppet Module for Boxen

[![Build Status](https://travis-ci.org/smh/puppet-pckeyboardhack.png?branch=master)](https://travis-ci.org/smh/puppet-pckeyboardhack)

Installs [PCKeyboardHack](http://pqrs.org/macosx/pckeyboardhack/pckeyboardhack.html.en) on your Mac.

## Usage

```puppet
include pckeyboardhack

# add pckeyboardhack to login items:
include pckeyboardhack::login_item

# change the left control to F19:
pckeyboardhack::bind { 'keyboard bindings':
  mappings => { 'control_l' => 80 }
}
```

## Required Puppet Modules

* `boxen`
* `osx`
* `glarizza/puppet-property_list_key`

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
