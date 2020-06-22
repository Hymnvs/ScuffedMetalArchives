class Weblink < ApplicationRecord

  # a weblink belongs to a band, it is associated via band_id
  belongs_to :band, optional: true

  # the fields below must always be filled in a form
  validates :title, presence: true
  validates :url, presence: true

end
