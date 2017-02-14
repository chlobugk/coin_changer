require 'minitest/autorun'
require_relative 'coin_changer.rb'

class CoinChanger < MiniTest::Test 
	def test_4_returns_4penny
		my_cents = 4
		results = coin_function(my_cents)
		assert_equal({:penny => 4}, results)
	end
end
