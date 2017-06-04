class Author < ApplicationRecord
  has_many :item_authors
  has_many :items, through: :item_authors
end
