def greed(dice)
	d = {}
	dice.each do |i|
		d[i] = 0 if d[i].nil?
		d[i] += 1
	end
	n = 0
	d.each do |k,v|
		if v >= 3
			if k == 1
				n += 1000
			else
				n += 100*k
			end
			v -= 3
		end
		v.times do
			n += case k
				when 5
					50
				when 1
					100
				else
					0
				end
		end
	end
	n
end
			
