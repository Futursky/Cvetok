module CurrentCart
  extend ActiveSupport::Concern
  private
  def set_cart
    p "%%%%%%%%%%%%%%%%%%%%%%%"
    p session[:cart_id]
    @cart = Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart.id
  end
end
