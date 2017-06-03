class Item < ApplicationRecord
#has_and_belongs_to_many :authors

has_many :authors, through: :item_authors
has_many :item_authors

  def self.search(search)
  	#puts Item.instance_variables.sort
  	#puts "-----------------------------------------------"
  	#puts @Item.authors
  	#puts Item.authors
  	#puts where({author: "George"})
  	where("name LIKE ?", "%#{search}%") 
  	#where("name LIKE :search OR #{@Item.authors} LIKE :search", search: "%#{search}%")





  end

  has_attached_file :item_img, styles: { :item_index => "250x350>", :item_show => "325x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :item_img, content_type: /\Aimage\/.*\z/

end
