json.extract! item_author, :id, :item_id, :author_id, :created_at, :updated_at
json.url item_author_url(item_author, format: :json)
