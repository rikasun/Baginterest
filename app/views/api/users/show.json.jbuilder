# user profile either boards and pins
json.set! :user do
  json.partial! "api/users/user", user: @user
end

json.set! :boards do
   json.array! @user.boards do |board|
    json.extract! board, :id,:board_name, :author_id
  end
end

json.set! :pins do
  json.array! @user.pins do |pin|
    json.extract! pin, :id, :description, :url, :author_id
  end
end
