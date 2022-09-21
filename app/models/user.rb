class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tasks, dependent: :destroy
  has_many :finances, dependent: :destroy
  validates :first_name, :last_name, :phone_number, :email, :password, presence: true
  # validates :email, format: { with: /\S+@\S+\.\S+/, message: 'Use um email válido' }
  has_one_attached :photo
end
