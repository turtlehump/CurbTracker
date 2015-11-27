class Start < ActiveRecord::Base
  belongs_to :user
  has_many :ends, through: :routes
  has_many :routes, dependent: :destroy
  #this (^) lines main functionality is the dependent: :destroy, not to create a @start.routes

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode
end
