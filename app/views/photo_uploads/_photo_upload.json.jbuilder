json.extract! photo_upload, :id, :image, :created_at, :updated_at
json.url photo_upload_url(photo_upload, format: :json)
