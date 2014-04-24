require 'spec_helper'

describe Customer do
  it { should have_many :charges }
  it { should have_many :organizations }
end
