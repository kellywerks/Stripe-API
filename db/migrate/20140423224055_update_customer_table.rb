class UpdateCustomerTable < ActiveRecord::Migration
  def change
    add_column :customers, :name, :string
    add_column :customers, :address, :string
    add_column :customers, :zip, :string
    add_column :customers, :city, :string
    add_column :customers, :state, :string
    add_column :customers, :country, :string
    add_column :customers, :county_code, :string
  end
end
