def sequence(int1, target)
	# return [] if int1 == 0
	counts = (1..int1).to_a

	counts.map do |count|
		target * count
	end
end


p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
