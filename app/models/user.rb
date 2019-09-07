class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  def active_for_authentication?
    super && !is_deleted
  end
  def inactive_message
   !is_deleted ? super : :deleted_account
  end
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         attachment :profile_image
         validates :last_name, presence: true
         validates :first_name, presence: true
         validates :last_name_kana, presence: true, format: {with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。'}
         validates :first_name_kana, presence: true, format: {with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。'}
         validates :email, presence: true

 
         has_many :favorites, dependent: :destroy
 
end
