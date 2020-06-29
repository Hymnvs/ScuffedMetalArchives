class ReleaseType < ApplicationRecord

  # a release type has many releases
  has_many :releases

  # the fields below must always be filled in a form
  validates :name, presence: true

end
