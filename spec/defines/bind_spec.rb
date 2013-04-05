require 'spec_helper'

describe 'pckeyboardhack::bind' do
  let(:title) { 'whatever' }
  let(:params) do
    {
      :mappings => {
        'control_l' => 80,
        'command_l' => 90
      }
    }
  end

  it do
    should contain_property_list_key('pckeyboardhack::bind').with({
      :ensure      => 'present',
      :path        => '~/Library/Preferences/org.pqrs.PCKeyboardHack.plist',
      :key         => 'sysctl',
      :value       => {
        'enable_control_l'  => '1',
        'keycode_control_l' => '80',
        'enable_command_l'  => '1',
        'keycode_command_l' => '90'
      },
      :value_type  => 'hash'
    })
  end
end
