class Task < ApplicationRecord
  belongs_to :list

  validates :body, length: { minimum: 5, maximum: 1000 }
  validates :list_id, presence: true
  validates :completed, default: false, inclusion: { in: [true, false] }
end
