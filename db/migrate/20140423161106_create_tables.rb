class CreateTables < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
    end

    create_table :donors do |t|
      t.string :name
      t.string :email
      t.string :token
    end
  end
end
