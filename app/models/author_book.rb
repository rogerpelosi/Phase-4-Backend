class AuthorBook < ApplicationRecord

  belongs_to :book
  belongs_to :author

  validates :author_id, uniqueness: {scope: :book_id, message: "This author already has a book with this exact title in the database"}

end
