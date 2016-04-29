ActiveAdmin.register Negociation do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :email, :DDD, :celular, :subject, :description
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

  index do
  	column "ID", :id
  	column "Name", :name
  	column "E-mail", :email
  	column "DDD", :DDD
  	column "Telefone", :celular
  	column "Assunto", :subject
  	column "Recebido", :created_at
  	column "Atualizado", :updated_at
  	actions
  end


end
