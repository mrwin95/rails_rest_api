class User < ApplicationRecord
    has_one_attached :avatar
    has_many :facts

    validates :username, presence: true
end
