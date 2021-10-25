class BookSerializer < ActiveModel::Serializer

  attributes :id, :title, :image_url, :isbn, :description, :publisher, :price

  has_many :authors 
  
end
