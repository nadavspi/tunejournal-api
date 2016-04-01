# == Schema Information
#
# Table name: lists
#
#  id         :integer          not null, primary key
#  name       :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class List < ApplicationRecord
  belongs_to :user
  has_many :associations
  has_many :tunes, through: :associations
  default_scope -> { order(created_at: :asc) }
  validates :user_id, presence: true
  validates :name, presence: true, length: { maximum: 50 }
end
