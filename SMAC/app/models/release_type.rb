class ReleaseType < ApplicationRecord

  # the fields below must always be filled in a form
  validates :name, presence: true

end
