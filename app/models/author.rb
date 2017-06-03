class Author < ApplicationRecord
	has_many :items through: :item_authors
    has_many :item_authors
    #has_and_belongs_to_many :items
end
