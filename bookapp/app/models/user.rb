class User < ApplicationRecord
    has_and_belongs_to_many :books
    validates :name, :email, presence: true
    validates :email, uniqueness: true
end
