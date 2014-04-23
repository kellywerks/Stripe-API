class UpdateTables < ActiveRecord::Migration
  def change
    drop_table :donors

    create_table :customers do |t|
      t.string :email
      t.string :default_card
    end
  end
end
