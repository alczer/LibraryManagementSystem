class Penalty < ApplicationRecord
  belongs_to :client
  belongs_to :loan
end
