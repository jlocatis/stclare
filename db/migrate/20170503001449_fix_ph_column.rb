class FixPhColumn < ActiveRecord::Migration
  def self.up
    change_column :users, :phone_number, :string
  end

  def self.down
    change_column :users, :phone_number, :integer
  end
end
