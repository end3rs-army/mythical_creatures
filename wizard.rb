class Wizard

	attr_reader :name

	def initialize(name, bearded: true)
		@name = name
		@bearded = bearded
	end

	def bearded?
		@bearded
	end

	def incantation(spell)
		"sudo #{spell}"
	end
end
