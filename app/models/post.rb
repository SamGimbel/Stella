require 'paperclip'

class Post < ActiveRecord::Base 
  belongs_to :user
  
  validates :title,       :presence => true,
                          :length => { :minimum => 5 }
  validates :image,       :presence => true
  validates :platform,    :presence => true
  validates :icon,        :presence => true
  validates :link,        :presence => true
  
  
  
  has_attached_file :image, :styles => { :medium => "500x500>", :thumb => "100x100>" }, 
      :storage => :s3,
      :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
      :path => "/:style/:id/:filename"
  has_attached_file :icon, :styles => { :small => "50x50>" },      
      :storage => :s3,
      :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
      :path => "/:style/:id/:filename"
end
