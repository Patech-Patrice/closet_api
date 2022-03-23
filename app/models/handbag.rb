class Handbag < ApplicationRecord
   
    validates :color, presence: true
    validates :fabric, presence: true

    belongs_to :brand
  
end
