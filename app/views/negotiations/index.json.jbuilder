json.array!(@negotiations) do |negotiation|
  json.extract! negotiation, :id, :name, :email, :celular, :subject, :description
  json.url negotiation_url(negotiation, format: :json)
end
