class Team
	attr_accessor :name, :motto, :heroes

	@@teams = []

	def initialize (attribs)
		@name = attribs["name"]
		@motto = attribs["motto"]
		@heroes = []
		@@teams << self
	end

	def self.all
		@@teams
	end

end