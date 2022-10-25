class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :menu_img, :website_URL, :category, :favorite?
end
