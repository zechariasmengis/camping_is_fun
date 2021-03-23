class CamperActivity < ApplicationRecord
  belongs_to :camper 
  belongs_to :activity
  
  validates :time, numericality: {greater_than: -1, less_than: 24}

  validate :can_not_equal_5


  def can_not_equal_5
  #   some logic
    if self.time == 5
        self.errors.add(:time, "That is my own special number not yours")
    end 
  end

  
end
