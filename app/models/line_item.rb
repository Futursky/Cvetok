class LineItem < ActiveRecord::Base
  belongs_to :flower
  belongs_to :cart
  belongs_to :order


  def total_price
    flower.price * quantity
  end

end
