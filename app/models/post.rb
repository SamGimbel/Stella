require 'paperclip'

class Post < ActiveRecord::Base 
  validates :title,       :presence => true,
                          :length => { :minimum => 5 }
  validates :image,       :presence => true
  validates :platform,    :presence => true
  validates :icon,        :presence => true
  validates :link,        :presence => true
  
  belongs_to :user
  
  has_attached_file :image, :styles => { :medium => "500x500>", :thumb => "100x100>" }
  
end
