class User < ApplicationRecord
  validates :age, presence: true
end
