# user profile either boards and pins
json.extract! user, :id, :email, :username
if user.profile.attached?
  json.profileUrl url_for(user.profile)
end
