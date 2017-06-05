class Item < ApplicationRecord
  has_many :item_authors
  has_many :authors, through: :item_authors

  def self.search(search)
    (where("name LIKE ?", "%#{search}%") + Item.joins(:authors).where("Authors.name LIKE :search", search: "%#{search}%")).uniq
  end


  def self.search_advanced(search_author,search_title,search_isbn,search_publisher,search_language,search_description)
    results = []

    #Remember to add special functions at the beginning!! The rest follows the pattern
    queries = [search_author, search_title, search_isbn, search_publisher, search_language, search_description].map{|x| x == "" ? nil : x}
    queries_funs = [-> () {Item.joins(:authors).where("Authors.name LIKE :search_author", search_author: "%#{search_author}%")}]
    queries_texts = ["name", "isbn", "isbn", "language", "description"]
    queries_texts.zip(queries.drop(1)).map{|text, query| queries_funs.push(-> () {where("#{text} LIKE ?", "%#{query}%")})}
    if queries.all?{|x| x.nil?}
      where("name LIKE ?", "%%")
    else
      responses = queries.zip(queries_funs).map{|x, y| x ? y.() : nil}.compact.reduce{|x,y| x & y}.uniq
    end

  end

  has_attached_file :item_img, styles: { :item_index => "250x350>", :item_show => "325x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :item_img, content_type: /\Aimage\/.*\z/

end
