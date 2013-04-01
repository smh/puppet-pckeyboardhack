require 'spec_helper'

describe 'pckeyboardhack::bind' do
  let(:title) { 'whatever' }
  let(:params) do
    {
      :mappings => {
        'control_l' => 80,
        'command_l' => 90
      },
      :user     => 'smh'
    }
  end
  it do
    should contain_boxen__osx_defaults('pckeyboardhack::bind').with({
      :ensure => 'present',
      :domain => 'org.pqrs.PCKeyboardHack',
      :key    => 'sysctl',
      :type   => 'dict',
      :user   => 'smh',
      :value  => 'enable_control_l 1 keycode_control_l 80 enable_command_l 1 keycode_command_l 90'
    })
  end
end
