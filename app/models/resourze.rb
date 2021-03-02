class Resourze < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :users, through: :comments
    has_many :tags
    has_many :categories, through: :tags
    validates :name, presence: true
end
