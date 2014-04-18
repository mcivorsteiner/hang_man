require_relative '../db/config'
class Score < ActiveRecord::Base
	validates :name, length: {in: 2..10}

end