class Location < ApplicationRecord
    belongs_to :day
    has_one :location
end
