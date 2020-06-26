class BandArtist < ApplicationRecord

	# as the linking table between band and artist, it belongs to both of them
	belongs_to :band
	belongs_to :artist

end
