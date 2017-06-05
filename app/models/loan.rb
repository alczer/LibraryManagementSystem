class Loan < ApplicationRecord
  belongs_to :item
  belongs_to :user
  belongs_to :librarian
end
