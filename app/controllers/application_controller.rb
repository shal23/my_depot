class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  	def current_cart
  		Cart.find(session[:cart_id])
  		rescue ActiveRecord::RecordNotFound
  		cart = Cart.create
  		#session[:cart_id] = cart.cart_id
  		

  #rescue_from CanCan::AccessDenied do |exception|
    #redirect_to root_path, :alert => exception.message
  end

end
