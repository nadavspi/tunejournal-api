class List < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :asc) }
  validates :user_id, presence: true
  validates :name, presence: true, length: { maximum: 50 }
end