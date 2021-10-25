class AuthorBookSerializer < ActiveModel::Serializer
  attributes :id
  has_one :book
  has_one :author
end
