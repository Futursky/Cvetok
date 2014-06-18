ActiveAdmin.register Order do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  show do |ad|
    attributes_table do
      row :name
      row :address
      row :email
      row :line_items do
        ul do
          ad.line_items.each do |item|
            ul do
              li item.flower.name
            end
          end
        end
      end
    end
  end

end
