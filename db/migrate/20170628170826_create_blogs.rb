class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :blurb
      t.string :image

      t.timestamps
    end
  end
end
