class AddIconFields < ActiveRecord::Migration
  def self.up
    remove_column :posts, :icon
    add_column :posts, :icon_file_name, :string
    add_column :posts, :icon_content_type, :string
    add_column :posts, :icon_file_size, :integer
    add_column :posts, :icon_updated_at, :datetime
  end

  def self.down
    remove_column :posts, :icon_updated_at
    remove_column :posts, :icon_file_size
    remove_column :posts, :icon_content_type
    remove_column :posts, :icon_file_name
    add_column :posts, :icon, :string
  end
end