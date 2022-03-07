class User < ApplicationRecord
    has_one_attached :avatar
    has_many :facts
    has_many :user_logs
    validates :username, presence: true

    after_create do
        UserLogCreateJob.perform_later(self.id)
    end
end
