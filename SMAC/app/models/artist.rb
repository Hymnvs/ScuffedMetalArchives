class Artist < ApplicationRecord

  # this is a many to many relationship between band and artist through the table band_artists
  has_many :band_artists
  has_many :bands, :through => :band_artists

  # this is a many to many relationship between artist and releases through the table artist_releases
  has_many :artist_releases
  has_many :releases, :through => :artist_releases

  # an artist has one attached artist picture, this is handled by the ActiveStorage
  has_one_attached :selfie

  # the field below must always be filled in a form
  validates :alias, presence: true

end
