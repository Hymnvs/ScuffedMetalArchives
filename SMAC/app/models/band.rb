class Band < ApplicationRecord

  # a band can have many weblinks
  # when a band gets destroyed, all its weblinks get destroyed too
  has_many :weblinks, dependent: :destroy

  # this is a many to many relationship between band and artist through the table band_artists
  has_many :band_artists
  has_many :artists, :through => :band_artists

  # this is a many to many relationship between band and genre through the table band_genres
  has_many :band_genres
  has_many :genres, :through => :band_genres

  # a band can have multiple band pictures, this is part of the ActiveStorage
  has_many_attached :band_pictures

  # a band can have multiple band logos, this is part of the ActiveStorage
  has_many_attached :band_logos

  # the fields below must always be filled in a form
  validates :name, presence: true
  validates :country, presence: true
  validates :location, presence: true
  validates :formation_date, presence: true

end
