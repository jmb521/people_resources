require 'securerandom'
class User < ApplicationRecord
    has_secure_password
    has_many :resourzes 
    has_many :comments

    has_many :resourzes, through: :comments
    validates_presence_of :username, :email, :password
    validates_uniqueness_of :username, :email 


    def self.find_by_omniauth(auth)
        self.find_or_create_by(uid: auth[:uid]) do |u|
            u.username = auth["info"]["nickname"]
            u.email = auth["info"]["email"]
            u.password = SecureRandom.hex(16)
        end
    end

end
