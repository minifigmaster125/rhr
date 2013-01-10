class Year < ActiveRecord::Base
    has_many :awards
	def to_s
		"#{yearno}"
	end
end
