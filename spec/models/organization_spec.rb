require 'spec_helper'

describe Organization do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }

  it { should have_many :charges }
  it { should have_many :customers }
end
