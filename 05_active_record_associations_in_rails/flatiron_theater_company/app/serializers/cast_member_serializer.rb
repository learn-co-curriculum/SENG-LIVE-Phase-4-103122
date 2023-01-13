class CastMemberSerializer < ActiveModel::Serializer
  attributes :id, :name, :role
  belongs_to :production
end
