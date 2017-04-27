class FixUsersTable < ActiveRecord::Migration
  def self.up
    remove_column :users, :password
    add_column :users, :full_name, :string
    add_column :users, :address, :string
    add_column :users, :phone_number, :integer
  end

  def self.down
    add_column :users, :password, :string
    remove_column :users, :full_name
    remove_column :users, :address
    remove_column :users, :phone_number
  end
end
