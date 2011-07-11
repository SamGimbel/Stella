class Post < ActiveRecord::Base
  validates :title,       :presence => true,
                          :length => { :minimum => 5 }
  validates :createdate,  :presence => true
  validates :image,       :presence => true
  validates :platform,    :presence => true
  validates :image,       :presence => true
end
