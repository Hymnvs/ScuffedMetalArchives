class Band < ApplicationRecord

    # a band can have many weblinks
    # when a band gets destroyed, all its weblinks get destroyed too
    has_many :weblinks, dependent: :destroy

    # the fields below must always be filled in a form
    validates :name, presence: true
    validates :country, presence: true
    validates :location, presence: true
    validates :formation_date, presence: true

end
