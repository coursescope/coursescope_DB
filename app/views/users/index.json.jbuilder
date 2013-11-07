json.array!(@users) do |user|
  json.extract! user, :firstName, :lastName, :encrypted_password, :personal_information, :school, :email
  json.url user_url(user, format: :json)
end
