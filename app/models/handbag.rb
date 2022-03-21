class Handbag < ApplicationRecord
    validates :name, presence: true
    validates :style, presence: true
    validates :description, presence: true
    validates :brand_name, presence: true 
    validates :size, presence: true
    
end
