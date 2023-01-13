class ProductionSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :director, :description, :image, :ongoing, :budget

  has_many :cast_members
end
