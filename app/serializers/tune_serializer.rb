class TuneSerializer < ActiveModel::Serializer
  attributes :id, :name, :composer, :year
  has_many :lists, embed: :ids
  has_many :notes
end
