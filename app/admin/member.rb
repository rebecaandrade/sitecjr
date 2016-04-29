ActiveAdmin.register Member do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :password, :email, :avatar, :bio
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
# 
	show do
		attributes_table do
			row :name
			row :email
			row :bio
		end
	end

	index do 
		column :name
		column :email
		column :bio
		actions
	end

	form do |f|
		inputs 'Dados' do
			input :name		
			input :email
			input :password
			input :bio
			input :avatar, as: :file
			actions
		end
	end	

	


end
