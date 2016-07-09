class List < ActiveRecord::Base
  validates :name, length: { minimum: 1, maximum: 100 }, presence: true
  validates :permissions, length: { minimum: 1, maximum: 100 }, presence: true
  validates :permissions, inclusion: { in: %w(private viewable open),
    message: "%{value} is not a valid size" }
    
  has_many :items
end
