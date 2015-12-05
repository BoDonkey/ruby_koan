class DiceSet
	attr_reader :values
	def roll(number)
		die_values = Array.new
		dice_roll = Random.new
		(0..number-1).each do |i|
			dice_roll.rand(6)+1
			die_values.push(dice_roll)
		end
		@values = die_values
	end
	
end
