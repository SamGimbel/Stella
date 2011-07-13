class User update < ActiveRecord::Migration
  def self.up
    remove_column :users, :lastpost
    add_column :users, :username, :string
    add_column :users, :password, :string
  end

  def self.down
    remove_column :users, :password
    remove_column :users, :username
    add_column :users, :lastpost, :string
  end
end