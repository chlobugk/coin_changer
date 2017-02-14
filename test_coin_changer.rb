require 'minitest/autorun'
require_relative 'coin_changer.rb'

class CoinChanger < MiniTest::Test 
	def test_4_returns_4penny
		my_cents = 4
		results = penny_function(my_cents)
		assert_equal({:penny => 4}, results)
	end

	def test_17_returns_3nickel
		my_cents = 17
		results = nickel_function(my_cents)
		assert_equal({:nickel => 3}, results)
	end

	def test_53_returns_5dime
		my_cents = 53
		results = dime_function(my_cents)
		assert_equal({:dime => 5}, results)
	end
end
