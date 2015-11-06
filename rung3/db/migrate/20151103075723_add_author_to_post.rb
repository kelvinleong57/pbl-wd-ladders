class AddAuthorToPost < ActiveRecord::Migration
	def change
		# table, field, type
		add_column :posts, :author, :string
	end
end
