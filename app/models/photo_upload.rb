class PhotoUpload < ApplicationRecord
    mount_uploader :image, PhotoUploader
end
