class Post < ActiveRecord::Base
  validates :title,       :presence => true,
                          :length => { :minimum => 5 }
  validates :image,       :presence => true
  validates :platform,    :presence => true
  validates :icon,        :presence => true
  validates :link,        :presence => true
  
  belongs_to :post
  has_attached_file :image, :storage => :database
  
end
