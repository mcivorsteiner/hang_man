require_relative '../db/config'
class HighScore < ActiveRecord::Base
	validates :name, length: {in: 2..10}

end