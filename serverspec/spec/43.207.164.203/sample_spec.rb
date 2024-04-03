require 'spec_helper'

set :backend, :ssh
set :host, '43.207.164.203'
set :ssh_options, :user => 'ec2-user', :keys => ['kawakami.pem']

describe package('git') do
  it { should be_installed }
end

describe package('nginx') do
  it { should be_installed }
end

describe 'SSH connection' do
  it 'should connect to the remote host' do
    Net::SSH.start('54.249.215.37', 'ec2-user', keys: ['kawakami.pem']) do |ssh|
      # ここにSSH接続が成功した場合のテストコードを記述する
      # 例えば、特定のコマンドを実行して結果を検証するなど
    end
  end
end

