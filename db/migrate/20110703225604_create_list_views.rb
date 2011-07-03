class CreateListViews < ActiveRecord::Migration
  def self.up
    create_table :list_views do |t|
      t.integer :postid
      t.string :title
      t.string :author
      t.string :createdate
      t.boolean :published
      t.string :publishdate
      t.string :imageurl
      t.string :iconurl

      t.timestamps
    end
  end

  def self.down
    drop_table :list_views
  end
end
