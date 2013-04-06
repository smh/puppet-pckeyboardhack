require 'spec_helper'

describe 'pckeyboardhack' do
  it do
    should include_class('pckeyboardhack::config')

    should contain_package('PCKeyboardHack').with({
      :ensure   => 'installed',
      :source   => 'http://pqrs.org/macosx/pckeyboardhack/files/PCKeyboardHack-9.0.0.dmg',
      :provider => 'pkgdmg'
    })
  end
end
