json.array!(@professors) do |professor|
  json.extract! professor, :professorID, :firstName, :lastName, :email, :Field, :website
  json.url professor_url(professor, format: :json)
end
