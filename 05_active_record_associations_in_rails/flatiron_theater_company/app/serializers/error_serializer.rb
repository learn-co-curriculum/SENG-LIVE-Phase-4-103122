class ErrorSerializer < ActiveModel::Serializer
  def self.serialize(errors)
    byebug
    errors.map{|e| "#{e.attribute} #{e.message}"}
  end 
end
