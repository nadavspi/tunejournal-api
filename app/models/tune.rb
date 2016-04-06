# == Schema Information
#
# Table name: tunes
#
#  id         :integer          not null, primary key
#  name       :string
#  composer   :string
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Tune < ApplicationRecord
  belongs_to :user
  has_many :associations
  has_many :lists, through: :associations
  has_many :notes
  validates :name, presence: true
  validates :year,
            inclusion: { in: 1900..Date.today.year },
            format: {
              with: /(19|20)\d{2}/i,
              message: "should be a four-digit year"
            }
end
