class Task < ApplicationRecord
  belongs_to :user_id
  validates :content, :date, presence: true
  validates :content, numericality: { minumum: 5 }
end
