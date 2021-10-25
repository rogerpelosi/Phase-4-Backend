class Book < ApplicationRecord

    belongs_to :user 

    has_many :author_books
    has_many :authors, through: :author_books

end
