class Day < ApplicationRecord
    has_many :events
    has_one :location, through: :events
end
