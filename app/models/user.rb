class User < ActiveRecord::Base
	has_many :drives
	has_many :rides
	validates :email, uniqueness: true, on: :create
	validates :name, :email, presence: true
	validates :password, presence: true,
end
