class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups

    def list_activities
        
    end
end
