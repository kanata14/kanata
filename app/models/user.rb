class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many:mangas,dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_mangas, through: :likes, source: :manga

  def already_liked?(manga)
       self.likes.exists?(manga_id: manga.id)
     end
end
