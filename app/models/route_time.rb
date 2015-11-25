class RouteTime < ActiveRecord::Base
  belongs_to :end
  belongs_to :user
end
