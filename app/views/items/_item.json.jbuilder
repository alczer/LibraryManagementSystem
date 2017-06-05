json.extract! item, :id, :name, :description, :isbn, :language, :state, :date_pub, :item_img_file_name, :item_img_content_type, :item_img_file_size, :item_img_updated_at, :created_at, :updated_at
json.url item_url(item, format: :json)
