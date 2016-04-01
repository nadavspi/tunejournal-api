# == Schema Information
#
# Table name: authentication_tokens
#
#  id           :integer          not null, primary key
#  body         :string
#  user_id      :integer
#  last_used_at :datetime
#  ip_address   :string
#  user_agent   :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class AuthenticationTokenTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
