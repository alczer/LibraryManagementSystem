class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

before_create :add_date_joined, :add_id_user, :add_type

private
 def add_date_joined
  self.date_joined= Time.now
 end
 def add_id_user
  self.id_user= id
 end
 def add_type
  self.user_type="klient"
 end

end
