class Production < ApplicationRecord
    validates_presence_of :title, :budget, :director, :description, :image, :genre
    validates :title, length: {maximum:50}
    validates :description, length: {in: 5...250}
    validates :budget, numericality: {greater_than: 0, message:'More Money Plzzz'}
    validates :image, inclusion: {in: ['jpg', 'png'], message: "The file type must be an jpg or png"}
    validate :genre, :no_more_musicals
    
    def no_more_musicals
        if self.genre === 'Musical' && Production.where("genre = 'Musical'").count > 1
            errors.add :genre, "Sorry no more musicals at this time"
        end
    end 
    
end
