class Category < ActiveRecord::Base
  has_many :flowers
  has_many :images, :as => :imagable, :dependent => :destroy
  accepts_nested_attributes_for :images, :allow_destroy => true
end
