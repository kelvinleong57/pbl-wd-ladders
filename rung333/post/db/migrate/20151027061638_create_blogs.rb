class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :image_url
      t.timestamp :timestamp

      t.timestamps
    end
  end
end
