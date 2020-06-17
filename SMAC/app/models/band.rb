class Band < ApplicationRecord

    validates :name, presence: true
    validates :country, presence: true
    validates :location, presence: true
    validates :formation_date, presence: true

end
