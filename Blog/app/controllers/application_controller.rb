class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :all_categories
  helper_method :all_post
  # before_action :site_search

  def all_categories
  	@categories = Category.all
  end

  def all_post
  	@post = Post.all
  end

 #  def site_search
 #  	@search = Post.search(params[:search])
	# @search_posts = @search.result
 #  end
end
