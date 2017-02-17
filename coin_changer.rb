def penny_function(my_cents)
	pennies = 0

	if ((my_cents - 1) >= 0)
		pennies = my_cents / 1
	end	
	pennies
end									


def nickel_function(my_cents)
	nickels = 0

	if ((my_cents - 5) >= 0)
		nickels = (my_cents / 5).floor
	end
	nickels
end


def dime_function(my_cents)
	dimes = 0

	if ((my_cents - 10) >= 0)
		dimes = (my_cents / 10).floor
	end
	dimes
end


def quarter_function(my_cents)
	quarters = 0
	amount = 0

	if ((my_cents - 25) >= 0)
		quarters = (my_cents / 25).floor
	end
	quarters
end


def coin_hash(my_cents)

	hash_coins = {}


	if  (my_cents >= 25)					
		first = quarter_function(my_cents)
		my_cents = my_cents - (first * 25) 
		hash_coins[:quarter] = first
	end	

	if  (my_cents >= 10) 
		second = dime_function(my_cents)		
		my_cents = my_cents - (second * 10) 
		hash_coins[:dime] = second
	end

	if  (my_cents >= 5)
		third = nickel_function(my_cents)	
		my_cents = my_cents - (third * 5)
		hash_coins[:nickel] = third	
	end

	if  (my_cents >= 1)
		fourth = penny_function(my_cents)
		hash_coins[:penny] = fourth
	end

	hash_coins
end

def final_coin_changer(my_cents)

	cents = coin_hash(my_cents)

	coin_string = ''

	cents.each do |coin, value|
		coin_string << value.to_s + ' ' + coin.to_s + ' '
	end
	coin_string
		
end






# 											#written out 44 cents
# 		first = quarter_function(my_cents)  #first = 1
# 		remain = my_cents - (first * 25) 	#remain = 44 - 25 = 19 
# 		second = dime_function(remain)		#second =  1
# 		remain2 = remain - (second * 10)  	#remain2 = 19 - 10 = 9
# 		third = nickel_function(remain2)	#third = 1
# 		remain3 = remain2 - (third * 5)		#remain3 = 9 - 5 = 4
# 		fourth = penny_function(remain3)	#fourth = 4



