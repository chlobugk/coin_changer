require 'minitest/autorun'
require_relative 'coin_changer.rb'

class IndividualCoinChanger < MiniTest::Test 
	def test_4_returns_4penny
		my_cents = 4
		results = penny_function(my_cents)
		assert_equal(4, results)
	end

	def test_17_returns_3nickel
		my_cents = 17
		results = nickel_function(my_cents)
		assert_equal(3, results)
	end

	def test_53_returns_5dime
		my_cents = 53
		results = dime_function(my_cents)
		assert_equal(5, results)
	end

	def test_74_returns_24remaining
		my_cents = 74
		results = quarter_function(my_cents)
		assert_equal(2, results)
	end
end

class FinalCoinHash < MiniTest::Test 
	def test_44_returns_correctly
		my_cents = 44
		results = coin_hash(my_cents)
		assert_equal({:quarter => 1, :dime => 1, :nickel => 1, :penny => 4 }, results)
	end

	def test_27_returns_correctly
		my_cents = 27
		results = coin_hash(my_cents)
		assert_equal({:quarter => 1, :penny => 2}, results)
	end

	def test_123_returns_correctly
		my_cents = 123
		results = coin_hash(my_cents)
		assert_equal({:quarter => 4, :dime => 2, :penny => 3}, results)
	end

	def test_7_returns_correctly
		my_cents = 7
		results = coin_hash(my_cents)
		assert_equal({:nickel => 1, :penny => 2}, results)
	end

	def test_25_1_quarter
		my_cents = 25
		results = coin_hash(my_cents)
		assert_equal({:quarter => 1}, results)
	end

end

class HashToString < MiniTest::Test
	def test_hash_returns_string
		my_cents = 44
		results = final_coin_changer(my_cents)
		assert_equal('1 quarter 1 dime 1 nickel 4 penny ', results)
	end

	def test_25_1_quarter
		my_cents = 25
		results = final_coin_changer(my_cents)
		assert_equal('1 quarter ', results)
	end

end
