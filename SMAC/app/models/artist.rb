class Artist < ApplicationRecord

  # this is a many to many relationship between band and artist through the table band_artists
  has_many :band_artists
  has_many :bands, :through => :band_artists

  # the field below must always be filled in a form
  validates :alias, presence: true

end
