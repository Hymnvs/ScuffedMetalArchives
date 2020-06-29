class Release < ApplicationRecord

  belongs_to :release_type, optional: true

  # a release has one release type
  has_one :release_type

	# the fields below must always be filled in a form
	validates :title, presence: true
	validates :release_type_id, presence: true

end
