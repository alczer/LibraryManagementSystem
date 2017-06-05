json.extract! loan, :id, :item_id, :user_id, :date_in, :date_out, :librarian_id, :created_at, :updated_at
json.url loan_url(loan, format: :json)
