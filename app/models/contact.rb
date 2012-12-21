class Contact < ActiveRecord::Base
	attr_accessible :name, :email, :comment

	validates :name, :presence => true
	validates :email, :presence => true
	validates :comment, :presence => true
end
