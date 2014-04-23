class Charge < ActiveRecord::Base
  belongs_to :organization
  belongs_to :donor
  validates :amount, presence: true
end

