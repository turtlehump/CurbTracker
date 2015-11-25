class End < ActiveRecord::Base
  belongs_to :start
  belongs_to :user
  has_many :route_times
end
