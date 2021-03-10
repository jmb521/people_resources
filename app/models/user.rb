require 'securerandom'
class User < ApplicationRecord

    has_secure_password
    has_many :resourzes 
    has_many :comments

    has_many :resourzes, through: :comments
    validates_presence_of :username, :email, :password
    validates_uniqueness_of :username, :email 


    def self.find_with_omniauth(auth)
        binding.pry
        self.find_or_create_by(uid: auth[:uid]) do |u|
            if auth[:info][:nickname]
                u.username = auth[:info][:nickname]
            else
                u.username = auth[:info][:name]
            end
            u.email = auth[:info][:email]
            u.password = SecureRandom.hex
        end
    end

end
