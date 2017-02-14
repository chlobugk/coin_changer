def penny_function(my_cents)
	pennies = 0

	if (my_cents - 1) > 0
		pennies = my_cents / 1
	end	
end									


def nickel_function(my_cents)
	nickels = 0

	if (my_cents - 5) > 0
		nickels = (my_cents / 5).floor
	end
end


def dime_function(my_cents)
	dimes = 0

	if (my_cents - 10) > 0
		dimes = (my_cents / 10).floor
	end
end


def quarter_function(my_cents)
	quarters = 0
	amount = 0

	if (my_cents - 25) > 0
		quarters = (my_cents / 25).floor
	end
end


def final_coin_function(my_cents)

	hash_coins = {}
										#written out 44 cents
	first = quarter_function(my_cents) 	#first = 1
	remain = my_cents - (first * 25) 	#remain = 44 - 25 = 19 
	second = dime_function(remain)		#second =  1
	remain2 = remain - (second * 10)  	#remain2 = 19 - 10 = 9
	third = nickel_function(remain2)	#third = 1
	remain3 = remain2 - (third * 5)		#remain3 = 9 - 5 = 4
	fourth = penny_function(remain3)	#fourth = 4
	
	hash_coins[:quarter] = first
	hash_coins[:dime] = second
	hash_coins[:nickel] = third
	hash_coins[:penny] = fourth
	hash_coins
end





