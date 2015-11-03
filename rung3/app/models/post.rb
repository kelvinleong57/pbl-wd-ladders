class Post < ActiveRecord::Base
	def self.generate_test_posts
		(0..20).each do |i|
			p = Post.new(image_url: 'https://pbs.twimg.com/profile_images/644907410537234433/eHFbFgfY.jpg')
			# p = Post.new(image_url: 'http://thecatapi.com/api/images/get?image_id='+i.to_s)
			p.save
		end
	end

end
