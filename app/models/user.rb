class User < ApplicationRecord
# Include default devise modules. Others available are:
# :confirmable, :lockable, :timeoutable and :omniauthable
 devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable

 before_create :add_date_joined, :add_id_user, :add_type

 def fullname
  "#{self.first_name} #{self.last_name}"
 end

 private
 def add_date_joined
  self.date_joined= Time.now
 end
 def add_id_user
  self.id= id
 end
 def add_type
  self.user_type="klient"
 end


end
