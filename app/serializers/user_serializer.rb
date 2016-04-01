class UserSerializer < ActiveModel::Serializer
  # embed :ids, include: true
  attributes :id, :name, :email
  has_many :lists
  has_many :tunes
end
