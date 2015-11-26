class Route < ActiveRecord::Base
  belongs_to :start
  belongs_to :end
end
