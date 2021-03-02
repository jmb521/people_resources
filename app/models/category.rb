class Category < ApplicationRecord
    has_many :tags 
    has_many :resourzes, through: :tags 
    
end
