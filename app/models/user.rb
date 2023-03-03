class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tasks, dependent: :destroy
  has_many :finances, dependent: :destroy
  has_one_attached :photo

  validates :first_name, :last_name, :phone_number, :email, presence: true  
  # validate :password_complexity, on: :create

  def password_complexity
    return unless password.present? && !password.match(/(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)/)

    errors.add :password,
               'deve ter no mínimo 6 caracteres e use pelo menos uma letra maiúscula, uma minúscula e um símbolo'
  end
end

# PASSWORD_REQUIREMENTS = /\A
#   (?={.6})
#   (?=.*\d)
#   (?=.*[a-z])
#   (?=.*[A-Z])
#   (?=.*[[:^alnum:]])
# /x
# validates :password, presence: true, format: PASSWORD_REQUIREMENTS
