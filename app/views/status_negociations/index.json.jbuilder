json.array!(@status_negociations) do |status_negociation|
  json.extract! status_negociation, :id, :status, :firstNegociator, :secondNegociator, :log, :linkProposta, :descriptionNegociation
  json.url status_negociation_url(status_negociation, format: :json)
end
