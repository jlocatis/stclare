class ChangeOwnerToUserId < ActiveRecord::Migration
  def self.up
    rename_column :units, :owner_id, :user_id
  end

  def self.down
    rename_column :units, :user_id, :owner_id
  end
end
