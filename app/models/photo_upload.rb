class PhotoUpload < ApplicationRecord
    mount_uploaders :images, PhotoUploader
    serialize :images, JSON # If you use SQLite, add this line.
end
