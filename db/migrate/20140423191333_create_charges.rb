class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.belongs_to :organization
      t.belongs_to :donor
      t.float :amount
    end
  end
end
