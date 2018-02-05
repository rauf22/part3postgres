module CurrentCart
	extend ActiveSupport::Concern
	private
	def set_cart
		@cart = Cart.find(session[:cart_id])
		current_item.quantity = current_item.quantity.blank? ? 1 : current_item.quantity + 1
 		rescue ActiveRecord::RecordNotFound
		@cart = Cart.create
		session[:cart_id] = @cart.id
	end
end