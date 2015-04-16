class User < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "250x250>", :thumb => "200x200>" }, :default_url => "/images/:style/missing.png"
  validates_attachment :avatar,
  :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }

end
