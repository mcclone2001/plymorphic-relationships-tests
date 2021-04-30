class Car < ApplicationRecord
    has_many :tires, as: :owner
end
