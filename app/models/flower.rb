class Flower < ActiveRecord::Base
  belongs_to :category
  has_many :images, :as => :imagable, :dependent => :destroy
  accepts_nested_attributes_for :images, :allow_destroy => true
end
