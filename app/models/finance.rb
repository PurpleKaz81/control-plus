class Finance < ApplicationRecord
  belongs_to :user_id
  validates :category, :description, :value, :date, presence: true
  # validates :category
  validates :description, numericality: { minumum: 5 }
end
