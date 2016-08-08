class Ride < ActiveRecord::Base
  belongs_to :user
  has_many :matches
  has_many :drives, through: :matches
end
