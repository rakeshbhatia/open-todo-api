class Item < ActiveRecord::Base
  validates :description, length: { minimum: 1, maximum: 100 }, presence: true

  belongs_to :list
end
