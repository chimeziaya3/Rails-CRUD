class Event < ApplicationRecord
    belongs_to :day
    has_one :location
end
