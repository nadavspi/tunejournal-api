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

class AuthenticationToken < ApplicationRecord
  belongs_to :user
  has_secure_token :body
end
