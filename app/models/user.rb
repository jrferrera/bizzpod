class User < ActiveRecord::Base
	has_secure_password

	has_many :roles, dependent: :destroy

	validates :email, uniqueness: true
	accepts_nested_attributes_for :roles
end
