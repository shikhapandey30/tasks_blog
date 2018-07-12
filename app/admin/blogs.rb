ActiveAdmin.register Blog do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :list, :of, :attributes, :on, :title, :image, :category, :description
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
form do |form|
   form.inputs do
   	 form.input :title, :label => 'title'
   	 form.input :image, :label => 'image'
     form.input :category, :label => 'Category', :as => :select, :collection => Category.all.map{|u| ["#{u.name}", u.id]}   
     form.input :description, :label =>'description'



   	 end
   form.actions
 end

end
