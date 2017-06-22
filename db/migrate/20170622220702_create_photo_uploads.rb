class CreatePhotoUploads < ActiveRecord::Migration[5.0]
  def change
    create_table :photo_uploads do |t|
      t.string :image

      t.timestamps
    end
  end
end
