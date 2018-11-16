# pin index for a board
json.board do

  json.extract! @board, :id, :board_name, :author_id
end


json.pins do
  @board.pins.each do |pin|
  json.set! pin.id do 
    json.extract! pin, :id, :description, :author_id, :url
    if pin.photo.attached?
      json.photoUrl url_for(pin.photo)
    end
  end
end 
end

# json.pins do
#   json.set! @board.pins do |pin|
#     json.extract! pin, :id, :description, :author_id, :url
#     if pin.photo.attached?
#       json.photoUrl url_for(pin.photo)
#     end
#   end
# end

json.pinboards do
  json.array! @board.pinboards, :id, :pin_id, :board_id
end
