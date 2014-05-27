ActiveAdmin.register Category do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #

  permit_params :name, :description, images_attributes: [:photo, :id, :name, :description, :image,:_destroy]
  config.per_page = 10
  menu :priority => 1

  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  # form :partial => "form"

  show do |ad|
    attributes_table do
      row :name
      row :description
      row :images do
        ul do
          ad.images.each do |img|
            ul do
              image_tag(img.photo.url(:thumb))
            end
          end
        end
      end
    end
  end

  form :html => { :multipart => true } do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.has_many :images do |p|
        unless p.object.new_record?
          p.input :_destroy, :as=>:boolean, :label => "Delete Image?"
        end
        p.input :photo, :as => :file, :hint => image_tag(p.object.photo.url(:thumb)), :label => p.object.photo_file_name
      end
    end
    f.actions
  end
end
