class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url, :isbn, :description, :publisher, :price
end
