def penny_function(my_cents)
	
	hash_pennies = {}
	pennies = 0

	if (my_cents - 1) > 0
		pennies = my_cents / 1
		hash_pennies[:penny] = pennies
	end
	hash_pennies
end


def nickel_function(my_cents)

	hash_nickels = {}
	nickels = 0

	if (my_cents - 5) > 0
		nickels = (my_cents / 5).floor
		hash_nickels[:nickel] = nickels
	end
	hash_nickels
end






