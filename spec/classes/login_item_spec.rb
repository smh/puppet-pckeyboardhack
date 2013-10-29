require 'spec_helper'

describe 'pckeyboardhack::login_item' do
  it do
    should include_class('pckeyboardhack::config')

    should contain_exec('launch pckeyboardhack').with({
      :command     => '/usr/bin/open /Applications/PCKeyboardHack.app',
      :refreshonly => true,
      :subscribe   => 'Package[PCKeyboardHack_10.0.0]',
      :require     => 'Osx_login_item[PCKeyboardHack]'
    })
  end

  context 'with ensure defaulted' do
    it do
      should contain_osx_login_item('PCKeyboardHack').with({
        :ensure  => 'present',
        :path    => '/Applications/PCKeyboardHack.app',
        :require => 'Package[PCKeyboardHack_10.0.0]'
      })
    end
  end

  context 'with ensure set to present' do
    let(:params) do
      {
        :ensure => 'present'
      }
    end

    it do
      should contain_osx_login_item('PCKeyboardHack').with({
        :ensure  => 'present',
        :path    => '/Applications/PCKeyboardHack.app',
        :require => 'Package[PCKeyboardHack_10.0.0]'
      })
    end
  end

  context 'with ensure set to absent' do
    let(:params) do
      {
        :ensure => 'absent'
      }
    end

    it do
      should contain_osx_login_item('PCKeyboardHack').with({
        :ensure  => 'absent',
        :path    => '/Applications/PCKeyboardHack.app',
        :require => 'Package[PCKeyboardHack_10.0.0]'
      })
    end
  end
end

