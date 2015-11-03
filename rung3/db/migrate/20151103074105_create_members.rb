class CreateMembers < ActiveRecord::Migration
	def change
		create_table :members do |t|
			t.string :name
			t.string :email, :primary => true
			t.timestamps
		end
	end
end
