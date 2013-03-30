require 'spec_helper'

describe 'pckeyboardhack' do
  it do
    should contain_package('PCKeyboardHack').with({
      :ensure   => 'installed',
      :provider => 'pkgdmg'
    })
  end
end
