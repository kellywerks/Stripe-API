class Organization < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :charges
  has_many :customers, through: :charges
end
