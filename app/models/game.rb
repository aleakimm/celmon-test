class Game < ActiveRecord::Base
	has_many :user_creatures
	belongs_to :user
end
