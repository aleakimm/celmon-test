class UserCreature < ActiveRecord::Base
	belongs_to :user
	belongs_to :creature
	belongs_to :game

	validates :hp, presence: true, :numericality => {:greater_than_or_equal_to => 0, :message => "Quantity should not be zero or negative"}
	before_validation :load_defaults

	def load_defaults
		if self.new_record?
			self.hp = 10
		end
	end

end
