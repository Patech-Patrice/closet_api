class Handbag < ApplicationRecord
    validates :name, presence: true, length: { minimum: 1 }
    validates :style, presence: true, length: { minimum: 2 }
    validates :description, presence: true, length: { maximum: 500 }
    validates :brand_name, presence: true 
    validates :size, presence: true
    validates :price, presence: true, numericality: { only_integer: true }
end
