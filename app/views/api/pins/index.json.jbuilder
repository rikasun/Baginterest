# pin index for a user

json.array! @pins do |pin|
  json.extract! pin, :id, :description, :author_id, :url
  # json.photoUrl url_for(pin.photo)
end
