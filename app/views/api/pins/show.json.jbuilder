json.extract! @pin, :id,:description, :author_id, :url
if @pin.photo.attached?
  json.photoUrl url_for(@pin.photo)
end
