ActiveAdmin.register Post do
		menu :label => "Blog Post"
		index do
		column :title
		column :"Author",:admin_user
		column :category
		column :created_at
		end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :list, :of, :attributes, :on, :model,:category_id, :name, :body,:title,:admin_user_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_admin.user?
#   permitted
# end

end
