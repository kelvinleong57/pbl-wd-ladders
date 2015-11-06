class Members < ActiveRecord::Base

	

	def self.generate_test_members
		names = ['Eric Quach', 'David Liu', 'Eric Chang', 'Caroline Chen', 'Kimberly Kao', 'Jason Shan', 'Abraham Lin']
		emails = ['equach.com', 'dliu.com', 'echang.com', 'cchen.com', 'kkao.com', 'jshan.com', 'alin.com']

		(0..names.length-1).each do |i|
			m = Members.new(:name => names[i], :email => emails[i])
			m.save
		end
	end

end
