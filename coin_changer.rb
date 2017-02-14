def penny_function(my_cents)
	pennies = 0

	if (my_cents - 1) > 0
		pennies = my_cents / 1
	end
	amount = my_cents - pennies  	#First 4 functions show cents 
end									#remaining after coins taken off


def nickel_function(my_cents)
	nickels = 0

	if (my_cents - 5) > 0
		nickels = (my_cents / 5).floor
	end
	amount = my_cents - (5 * nickels)
end


def dime_function(my_cents)
	dimes = 0

	if (my_cents - 10) > 0
		dimes = (my_cents / 10).floor
	end
	amount = my_cents - (10 * dimes)
end


def quarter_function(my_cents)
	quarters = 0
	amount = 0

	if (my_cents - 25) > 0
		quarters = (my_cents / 25).floor
	end
	amount = my_cents - (25 * quarters)
end


def final_coin_function(my_cents)

	hash_coins = {}
	first = 0

	first = my_cents - (quarter_function(my_cents))

	second = first - (10 * dime_function(first))

	third = second - (5 * nickel_function(second))

	fourth = third - penny_function(third)

	hash_coins[:quarter] = first
	hash_coins[:dime] = second
	hash_coins[:nickel] = third
	hash_coins[:penny] = fourth
	hash_coins
end





