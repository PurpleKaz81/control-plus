class Task < ApplicationRecord
  belongs_to :user
  validates :content, :date, presence: true
  validates :content, length: { minimum: 5 }

  # private

  # def increase_task_quantity
  #   return if user.blank?

  # #   if self.quantity <= self.product.quantity
  # #   self.product.quantity -= self.quantity
  # #   self.product.save
  # #   else
  # #   self.errors.add(:quantity, "is greater than available quantity")
  # #   end
  # end
end
