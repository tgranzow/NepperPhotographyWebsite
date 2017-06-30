class AddImagesToPhotoUploads < ActiveRecord::Migration[5.0]
  def change
    add_column :photo_uploads, :images, :json
  end
end
