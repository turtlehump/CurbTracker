class Start < ActiveRecord::Base
  has_many :ends, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
