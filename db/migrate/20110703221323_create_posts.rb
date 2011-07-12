class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.integer :id
      t.string :title
      t.string :publishdate 
      t.string :createdate
      t.string :image
      t.string :platform
      t.string :icon
      t.string :link
      t.integer :tagid
      t.string :tag
      t.string :size

      t.timestamps
      
    end
  end

  def self.down
    drop_table :posts
  end
end
