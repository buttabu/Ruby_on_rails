class PostsController < ApplicationController
	def index
		# @content_first = "This is some sample text for My Ruby Blog";
		# @content_second = "This is additional sample text for My Ruby Blog";
		
		#instance variable to print Posts in an array
		@posts = Post.all
	end

	def show
		#get the id from the url and check in the database
		@post = Post.find(params[:id]);
	end

	def new
		@post = Post.new
		@category =  Category.all
	end
	# redirect is used to save the data and show user the 
		# post has been saved and go back to the post page
		# notice what will print on the screen
		# post_path will show the main page
		# if not save then render the same page by using render function
	def create
		# @post = Post.new(params[:post])
		@post = Post.create(post_params)
		if @post.save
			redirect_to posts_path, :notice => "Your post has been saved"
		else
			render "new"
		end
	end

	def edit
		@post = Post.find(params[:id]);
	end

	def update
		@post = Post.find(params[:id]);
		if @post.update_attributes(post_params)
			redirect_to post_path, :notice => "Your post has been update"
		else
			render "edit"
		end
	end

	def destroy
		@post = Post.find(params[:id]);
		@post.destroy
		redirect_to posts_path, :notice => "Your post has been deleted"
	end

	private

	def post_params
 	 params.require(:post).permit!
	end
end
