def greed(dice)
	the_score = 0
	hash_table = Hash[dice.group_by{ |v| v }.map{ |k, v| [k, v.size]}]
	if hash_table.has_key?(1) then
		case hash_table[1]
		when 1, 2
			the_score += hash_table[1] * 100
		when 3
			the_score += 1000
		when 4, 5, 6
			the_score += ((hash_table[1] - 3)*100) + 1000
		end		
	end
	if hash_table.has_key?(5) then
		case hash_table[5]
		when 1, 2
			the_score += hash_table[5] * 50
		when 3
			the_score += 500
		when 4, 5, 6
			the_score += ((hash_table[5] - 3)*50) + 500
		end
		puts("has 5 #{the_score}")
	end
	if hash_table.has_key?(2) then
		if hash_table[2] >= 3
			the_score += 200
		end
		puts("has 2 #{the_score}")
	end
	if hash_table.has_key?(3) then
		if hash_table[3] >= 3
			the_score += 300
		end
		puts("has 3 #{the_score}")
	end
	if hash_table.has_key?(4) then
		if hash_table[4] >= 3
			the_score += 400
		end
		puts("has 4 #{the_score}")
	end
	if hash_table.has_key?(6) then
		if hash_table[6] >= 3
			the_score += 600
		end
		puts("has 6 #{the_score}")
	end
return the_score
end
