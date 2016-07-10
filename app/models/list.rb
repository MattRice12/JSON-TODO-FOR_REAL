class List < ApplicationRecord
  has_many :tasks

  validates :title, length: { minimum: 2, maximum: 80 }
end
