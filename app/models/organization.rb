class Organization < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :charges
  has_many :donors, through: :charges
end
