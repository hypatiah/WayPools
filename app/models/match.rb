class Match < ActiveRecord::Base
  belongs_to :drive
  belongs_to :ride
end
