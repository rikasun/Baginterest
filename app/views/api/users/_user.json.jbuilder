# user profile either boards and pins

json.extract! user, :id, :email, :username
json.boards user.boards.each do |board|
    json.extract! board, :id,:board_name, :author_id
json.pins user.pins
end
