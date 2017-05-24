class Item < ApplicationRecord
self.table_name = 'item'

  def self.search(search)
  	where("name LIKE ?", "%#{search}%") 
  end

  has_attached_file :item_img, styles: { :item_index => "250x350>", :item_show => "325x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :item_img, content_type: /\Aimage\/.*\z/

end
