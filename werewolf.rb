class Werewolf

	attr_reader :name, :location

	def initialize(name,location="U.S.A.")

		@name = name
		@location = location
		@form = :human

	end

	def human?
		if @form == :human
			true
		else
			false
		end
	end

	def werewolf?
		if @form == :werewolf
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
		if @form == :human
			@form = :werewolf
		elsif @form == :werewolf
			@form = :human
		end
	end

end
