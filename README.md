# PCKeyboardHack Puppet Module for Boxen

[![Build Status](https://travis-ci.org/smh/puppet-pckeyboardhack.png?branch=master)](https://travis-ci.org/smh/puppet-pckeyboardhack)

Installs [PCKeyboardHack](http://pqrs.org/macosx/keyremap4macbook/pckeyboardhack.html.en) on your Mac.

## Usage

```puppet
include pckeyboardhack

# change the left control to F19:
pckeyboardhack::bind { 'keyboard bindings':
  mappings => { 'control_l' => 80 }
}
```

## Required Puppet Modules

* `boxen`
* `glarizza/puppet-property_list_key`

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
