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

def dime_function(my_cents)

	hash_dimes = {}
	dimes = 0

	if (my_cents - 10) > 0
		dimes = (my_cents / 10).floor
		hash_dimes[:dime] = dimes
	end
	hash_dimes
end






