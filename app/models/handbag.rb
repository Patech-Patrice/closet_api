class Handbag < ApplicationRecord
    validates :brand, presence: true
    validates :color, presence: true
    validates :fabric, presence: true
  
end
