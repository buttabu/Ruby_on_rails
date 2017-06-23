class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :all_categories
  helper_method :all_post

  def all_categories
  	@categories = Category.all
  end

  def all_post
  	@post = Post.all
  end
end
