ActiveAdmin.register StatusNegociation do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :status, :firstNegociator, :secondNegociator, :log, :linkProposta, :descriptionNegociation
#
# or
#
# permit_params do
#   permitted = [itted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
 index do
 	column "ID", :id
  	column "Status", :status
  	column "Negociador 1", :firstNegociator
  	column "Negociador 2", :secondNegociator
  	column "Log", :log
  	column "Link da Proposta", :linkProposta
  	column "Descrição", :descriptionNegociation
  	column "Criado", :created_at
  	column "Atualizado", :updated_at
  	actions
  end

end
