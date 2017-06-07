class Item < ApplicationRecord
  has_many :item_authors
  has_many :authors, through: :item_authors
  has_many :item_categories
  has_many :categories, through: :item_categories
  belongs_to :publisher

  def self.search(search,select_order)
    if select_order == "Sortowanie alfabetyczne"
      itemss = (where("name LIKE ?", "%#{search}%") + Item.joins(:authors).where("Authors.name LIKE :search", search: "%#{search}%")).uniq
      itemss = itemss.order("name ASC")
    else
      (where("name LIKE ?", "%#{search}%") + Item.joins(:authors).where("Authors.name LIKE :search", search: "%#{search}%")).uniq
    end

  end

  def self.search_advanced(search_author,search_title,search_isbn,search_publisher,search_language,search_description,select_category,select_order)
    results = []
    puts select_category
    #Remember to add special functions at the beginning!! The rest follows the pattern
    queries = [search_author.strip,select_category.strip, search_publisher.strip,search_title.strip,
               search_isbn.strip,  search_language.strip, search_description.strip].map{|x| x == "" ? nil : x}
    queries_funs = [-> () {Item.joins(:authors).where("Authors.name LIKE :search_author",
                                                      search_author: "%#{search_author}%")}]
    queries_funs.push(-> () {Item.joins(:categories).where("Categories.name LIKE :select_category",
                                                           select_category: "#{select_category}")})
    queries_funs.push(-> () {Item.joins(:publisher).where("Publishers.name LIKE :search_publisher",
                                                          search_publisher: "%#{search_publisher}%")})
    queries_texts = ["name", "isbn", "language", "description"]
    queries_texts.zip(queries.drop(3)).map{|text, query| queries_funs.push(-> () {where("#{text} LIKE ?", "%#{query}%")})}

    if queries.all?{|x| x.nil?}
      if select_order == "Sortowanie alfabetyczne"
      itemss = where("name LIKE ?", "%%")
      itemss = itemss.order("name ASC")
      else
        itemss = where("name LIKE ?", "%%")
        end
    else
      responses = queries.zip(queries_funs).map{|x, y| x ? y.() : nil}.compact.reduce{|x,y| x & y}.uniq
    end
  end

  # def self.create(item_name, isbn, language, state, date_pub, item_img_file_name, item_img_content_type, item_img_file_size, item_img_updated_at, publisher, description)
  #   Item.create!(name: item_name,isbn: isbn, language: language, state: state, date_pub: date_pub, item_img_file_name:item_img_file_name, item_img_content_type: item_img_content_type, item_img_file_size: item_img_file_size, item_img_updated_at: item_img_updated_at,publisher: publisher, description: description)
  # end

  has_attached_file :item_img, styles: { :item_index => "250x350>", :item_show => "325x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :item_img, content_type: /\Aimage\/.*\z/

end
