class Genre < ApplicationRecord

  # this is a many to many relationship between band and genre through the table band_genres
  has_many :band_genres
  has_many :bands, :through => :band_genres

  # the fields below must always be filled in a form
  validates :name, presence: true

end
