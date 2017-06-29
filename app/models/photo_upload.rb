class PhotoUpload < ApplicationRecord
    mount_uploader :images, PhotoUploader
end
