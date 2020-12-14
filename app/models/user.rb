class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :timeoutable

  enum sex: { 男性: 0, 女性: 1}
  
  attachment :profile_image
  
  has_many :reservations, dependent: :destroy
  
end
