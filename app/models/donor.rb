class Donor < ActiveRecord::Base
  has_many :charges
  has_many :organizations, through: :charges
end
