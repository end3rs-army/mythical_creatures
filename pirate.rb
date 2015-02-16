class Pirate

	attr_reader :name, :job

	def initialize(name, job = "Scallywag")
		@name = name
		@job = job
		@curse = false
		@bad = 0
	end

	def cursed?
		if @bad < 3
			@curse = false
		else
			@curse = true
		end
	end

	def commit_heinous_act
		@bad += 1
	end
end