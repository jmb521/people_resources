class User < ApplicationRecord
    has_secure_password
    has_many :resourzes 
    has_many :comments

    has_many :resourzes, through: :comments
    validates_presence_of :username, :email, :password
    validates_uniqueness_of :username, :email 


end
