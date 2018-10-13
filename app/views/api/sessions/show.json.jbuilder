json.set! "users" do
  json.extract! @user, :id, :email, :username
end

json.set! "session" do
  json.extract! @user, :session_token
end
