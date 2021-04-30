class Bike < ApplicationRecord
    has_many :tires, as: :owner
end
