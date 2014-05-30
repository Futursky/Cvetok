class Image < ActiveRecord::Base
  MAX_FILESIZE = 50.megabytes
  belongs_to :imagable, :polymorphic => true
  delegate :path, :url, :content_type, :to => :photo
  has_attached_file :photo,
                    :styles => { :medium => "600x450#",
                                 :thumb => "100x100>",
                                 :carousel => "1280x600#" },
                    :default_url => "/images/missing.png",
                    storage: :dropbox,
                    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  validates_attachment_size :photo, :less_than => MAX_FILESIZE

end
