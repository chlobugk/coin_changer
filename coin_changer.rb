def coin_function(my_cents)
	
	hash_coins = {}
	final = 0
	# penny = 1
	# nickel = 5
	# dime = 10
	# quarter = 25
	if (my_cents - 1) > 0
		final = my_cents / 1
	end
	hash_coins[:penny] = final
	hash_coins
end






