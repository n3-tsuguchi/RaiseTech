require 'spec_helper'

describe package('httpd') do
  it { should be_installed }
end

describe service('ansible') do
  it { should be_enabled }
  it { should be_running }
end