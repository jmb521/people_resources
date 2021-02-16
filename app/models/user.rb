class User < ApplicationRecord
    has_many :resourzes 
    has_many :comments
    has_many :commented_resourzes, through: :comments, :source => :resourze

    
    has_secure_password
end
