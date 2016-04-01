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

require 'test_helper'

class TuneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
