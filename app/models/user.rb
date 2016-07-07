class User < ActiveRecord::Base
  validates :username, length: { minimum: 1, maximum: 100 }, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :password, length: { minimum: 6 }, allow_blank: true
end
