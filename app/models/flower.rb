class Flower < ActiveRecord::Base
  # attr_accessible :category_id
  belongs_to :category
end
