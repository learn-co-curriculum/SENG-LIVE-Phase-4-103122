class TicketSerializer < ActiveModel::Serializer
  attributes :id, :price, :discount, :production
  has_one :production
  has_one :user

  # def production
  #   {title: object.production.title}
  # end 

  def discount
    "%10 off"
  end 

  def price
    "€#{'%.2f' % (object.price*1.06)}"
  end 
end
