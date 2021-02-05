class User < ApplicationRecord
    has_many :resourzes 
    has_many :comments
    has_many :resourzes, through: :comments
end
