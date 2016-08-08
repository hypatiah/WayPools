class User < ActiveRecord::Base
	has_many :drives
	has_many :rides
	validates :email, uniqueness: true, on: :create
	validates :name, :email, presence: true
	validates :password, presence: true


  include BCrypt

  # All of the BCrypt info methods you need - can be replaced by 'has_secure_password' if the user password field is 'password_digest'

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end
end
