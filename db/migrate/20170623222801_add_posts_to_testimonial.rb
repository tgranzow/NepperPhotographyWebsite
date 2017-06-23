class AddPostsToTestimonial < ActiveRecord::Migration[5.0]
  def change
    add_column :testimonials, :posts, :text
  end
end
