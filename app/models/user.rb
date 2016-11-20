class User < ApplicationRecord
	has_secure_password

	has_many :channels

	validates_presence_of :username, :email
	validates_uniqueness_of :username, :email
end
