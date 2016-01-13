class Werewolf

	attr_reader :name, :location

	def initialize(name,location="U.S.A.")

		@name = name
		@location = location
		@form = "homosapien"

	end

	def human?
		if @form == "homosapien"
			true
		else
			false
		end
	end

	def werewolf?
		if @form == "werewolf"
			true
		else
			false
		end
	end

	def respond_to?(input)
		if input == :change!
			true
		else
			false
		end
	end

	def change!
		if @form == "homosapien"
			@form = "werewolf"
		elsif @form == "werewolf"
			@form = "homosapien"
		end
	end

end

werewolf = Werewolf.new("David","London")
werewolf.change!
puts werewolf.human?
