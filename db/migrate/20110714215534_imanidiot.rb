class Imanidiot < ActiveRecord::Migration
  def self.up
    rename_column :posts, :created_by, :user_id
  end

  def self.down
    rename_column :posts, :user_id, :created_by
  end
end