class User < ActiveRecord::Base
	attr_accessor :email, :password, :password_confirmation
	VALID_EMAIL_REGEX = /([\w+.]+)@[a-z0-9\-.]+\.[a-z]+/i 
	validates :email, presence: true, 
					  format: { with: VALID_EMAIL_REGEX }, 
					  uniqueness: { case_sensitive: false }
	validates :password, presence: true, length: { minimum: 6 }
	validates :password_confirmation, presence: true
	devise :rememberable, :omniauthable, :trackable, :omniauth_providers => [:linkedin]

end