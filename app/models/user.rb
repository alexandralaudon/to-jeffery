class User < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  validates :avatar, :attachment_presence => true
validates_with AttachmentPresenceValidator, :attributes => :avatar
validates_with AttachmentSizeValidator, :attributes => :avatar, :less_than => 1.megabytes

end
