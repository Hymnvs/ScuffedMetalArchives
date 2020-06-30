class Release < ApplicationRecord

  belongs_to :release_type, optional: true
  belongs_to :band, optional: true

  # a release has one release type
  has_one :release_type

  # a release has one band
  has_one :band

  # a release has one cover image, this is part of the ActiveStorage
  has_one_attached :cover

	# the fields below must always be filled in a form
	validates :title, presence: true
  validates :release_type_id, presence: true
  validates :band_id, presence: true

end
