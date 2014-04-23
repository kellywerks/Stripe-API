require 'spec_helper'

describe Donor do
  it { should have_many :charges }
  it { should have_many :organizations }
end
