class Item < ApplicationRecord
  has_many :item_authors
  has_many :authors, through: :item_authors

  def self.search(search)
    (where("name LIKE ?", "%#{search}%") + Item.joins(:authors).where("Authors.name LIKE :search", search: "%#{search}%")).uniq
  end

  def self.search_advanced(search_author,search_title,search_isbn,search_publisher,search_language)
    where("name LIKE ?", "%#{search_title}%")
    puts "DZIAŁA"
  end
end
