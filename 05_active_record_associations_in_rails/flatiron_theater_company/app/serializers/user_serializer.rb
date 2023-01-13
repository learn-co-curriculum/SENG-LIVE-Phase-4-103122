class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :tickets, serializer:UserTicketsSerializer
  # has_many :productions
end
