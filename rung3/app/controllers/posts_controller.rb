class PostsController < ApplicationController

	protect_from_forgery with: :null_session,
     if: Proc.new { |c| c.request.format =~ %r{application/json} }

	# catch the post index from the routes.rb file
	def index
		# @image_urls = Post.all.map{|x| x.image_url}

		@image_urls = []
		Post.all.each do |post|
			@image_urls << post.image_url
		end
		
		render 'static-site'
	end

	def add_image
		image_url = params[:image_url]
		p = Post.new(image_url: image_url)
		p.save
		render nothing: true, status: 200 # 404 not good, 200 is good
	end

end
