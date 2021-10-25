class CreateAuthorBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :author_books do |t|
      t.belongs_to :book, null: false, foreign_key: true
      t.belongs_to :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
