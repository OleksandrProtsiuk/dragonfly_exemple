json.extract! photo, :id, :image_uid, :image_name, :created_at, :updated_at
json.url photo_url(photo, format: :json)
