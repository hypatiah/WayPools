class Drive < ActiveRecord::Base
  belongs_to :user
  has_many :requests
  has_many :rides, through: :matches
  validates :tolerance, presence: true
end
