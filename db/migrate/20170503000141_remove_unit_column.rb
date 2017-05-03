class RemoveUnitColumn < ActiveRecord::Migration
  def self.up
    remove_column :users, :unit
  end

  def self.down
    add_column :users, :unit, :string
  end
end
