class Drive < ActiveRecord::Base
	belongs_to :user
	has_many :matches
	has_many :rides, through: :matches
	validates :tolerance, presence: true
end
