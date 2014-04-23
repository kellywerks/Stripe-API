require 'spec_helper'

describe Charge do
  it { should belong_to :organization }
  it { should belong_to :donor }
  it { should validate_presence_of :amount }
end
