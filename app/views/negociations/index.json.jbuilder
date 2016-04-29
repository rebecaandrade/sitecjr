json.array!(@negociations) do |negociation|
  json.extract! negociation, :id, :name, :email, :DDD, :celular, :subject, :description
  json.url negociation_url(negociation, format: :json)
end
