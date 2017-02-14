require 'minitest/autorun'
require_relative 'coin_changer.rb'

class IndividualCoinChanger < MiniTest::Test 
	def test_4_returns_4penny
		my_cents = 4
		results = penny_function(my_cents)
		assert_equal(0, results)
	end

	def test_17_returns_3nickel
		my_cents = 17
		results = nickel_function(my_cents)
		assert_equal(2, results)
	end

	def test_53_returns_5dime
		my_cents = 53
		results = dime_function(my_cents)
		assert_equal(3, results)
	end

	def test_74_returns_24remaining
		my_cents = 74
		results = quarter_function(my_cents)
		assert_equal(24, results)
	end
end

# class FinalCoinChanger < MiniTest::Test 
# 	def test_44_returns_correctly
# 		my_cents = 44
# 		results = final_coin_function(my_cents)
# 		assert_equal({:quarter => 1, :dime => 1, :nickel => 1, :penny => 4 }, results)
# 	end
# end
