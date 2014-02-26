require 'spec_helper'

describe 'pckeyboardhack' do
  it do
    should include_class('pckeyboardhack::config')

    should contain_package('PCKeyboardHack_10.5.0').with({
      :ensure   => 'installed',
      :source   => 'https://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-10.5.0.dmg',
      :provider => 'pkgdmg'
    })
  end
end
