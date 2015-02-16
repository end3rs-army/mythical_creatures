class Dragon

	attr_reader :name, :rider, :color

	def initialize(name,color,rider)

		@name = name
		@rider = rider
		@color = color
		@hungry = true
		@eating = 0

	end

	def hungry?
		@hungry
	end

	def eat
		@eating += 1

		if @eating < 3
			@hungry = true
		else
			@hungry = false
		end
	end
end

