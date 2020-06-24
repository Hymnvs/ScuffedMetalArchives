class BandGenre < ApplicationRecord

  # as the linking table between band and genre, it belongs to both of them
  belongs_to :band
  belongs_to :genre

end
