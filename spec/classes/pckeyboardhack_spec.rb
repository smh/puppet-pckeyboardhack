require 'spec_helper'

describe 'pckeyboardhack' do
  it do
    should include_class('pckeyboardhack::config')

    should contain_package('PCKeyboardHack').with({
      :ensure   => 'installed',
      :source   => 'https://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-10.0.0.dmg',
      :provider => 'pkgdmg'
    })
  end
end
