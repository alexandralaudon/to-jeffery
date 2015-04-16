class User < ActiveRecord::Base
  validates_presence_of :name, :message

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "200x200#" },
    :default_url => "/images/:style/missing.png",
    :url  => ":s3_domain_url",
    :path => "public/avatars/:id/:style_:basename.:extension",
    :storage => :fog,
    :fog_credentials => {
        provider: 'AWS',
        aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"],
        aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"]
    },
    fog_directory: ENV["FOG_DIRECTORY"]

  validates_attachment :avatar,
  :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }

end
