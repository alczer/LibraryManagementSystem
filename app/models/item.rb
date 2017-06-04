class Item < ApplicationRecord
  has_many :item_authors
  has_many :authors, through: :item_authors

  def self.search(search)
    where("name LIKE ?", "%#{search}%") +Item.joins(:authors).where("Authors.name LIKE :search", search: "%#{search}%")
  end
  has_attached_file :item_img, styles: { :item_index => "250x350>", :item_show => "325x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :item_img, content_type: /\Aimage\/.*\z/
end
  