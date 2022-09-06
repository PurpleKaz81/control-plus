class Task < ApplicationRecord
  belongs_to :user
  validates :content, :date, :time, presence: true
  validates :content, length: { minimum: 5 }
  before_create :update_position
  acts_as_list

  private

  def update_position
    if Task.pluck(:position).empty?
      self.position = 1
    else
      position = Task.pluck(:position).max
      self.position = position + 1
    end
  end
end
