class CreatedBy < ActiveRecord::Migration
  def self.up
    remove_column :posts, :publishdate
    add_column :posts, :created_by, :string
    add_column :posts, :published_date, :string
  end

  def self.down
    remove_column :posts, :published_date
    remove_column :posts, :created_by
    add_column :posts, :publishdate, :string
  end
end