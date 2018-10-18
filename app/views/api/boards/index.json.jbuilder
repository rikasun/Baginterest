# json.array! @boards, :id, :board_name, :author_id

json.boards do
  json.array! @boards do |board|
    json.extract! board, :id, :board_name, :author_id
     if board.pins
       json.pins board.pins.map{ |pin| pin.id }
     else
       json.pins [1]
     end
  end
end


json.pins do
  @boards.each do |board|
    json.array! board.pins do |pin|
      json.extract! pin, :id, :description, :author_id, :url
        if pin.photo.attached?
          json.photoUrl url_for(pin.photo)
        end
    end
  end
end
