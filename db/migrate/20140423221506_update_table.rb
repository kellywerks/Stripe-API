class UpdateTable < ActiveRecord::Migration
  def change
    rename_column :charges, :donor_id, :customer_id
  end
end
