# == Schema Information
#
# Table name: associations
#
#  id         :integer          not null, primary key
#  list_id    :integer
#  tune_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Association < ApplicationRecord
  belongs_to :list
  belongs_to :tune
end
