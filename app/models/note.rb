# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  content    :string
#  tune_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Note < ApplicationRecord
  belongs_to :tune
end
