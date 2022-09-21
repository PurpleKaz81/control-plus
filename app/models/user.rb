class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tasks, dependent: :destroy
  has_many :finances, dependent: :destroy
  validates :first_name, :last_name, :phone_number, :email, presence: true
  PASSWORD_REQUIREMENTS = /\A
    (?={.6})
    (?=.*\d)
    (?=.*[a-z])
    (?=.*[A-Z])
    (?=.*[[:^alnum:]])
  /x
  validates :password, presence: true, format: PASSWORD_REQUIREMENTS
  has_one_attached :photo
end
