class Tire < ApplicationRecord
    belongs_to :owner, polymorphic: true
end
