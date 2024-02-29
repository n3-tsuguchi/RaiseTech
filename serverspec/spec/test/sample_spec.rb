require 'spec_helper'

describe service('ansible') do
  it { should be_enabled }
  it { should be_running }
end