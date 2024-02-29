require 'spec_helper'

describe package('git') do
  it { should exist }
end

describe package('nginx') do
  it { should exist }
end

