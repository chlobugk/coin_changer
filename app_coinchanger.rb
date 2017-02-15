require 'sinatra'
require_relative 'coin_changer'

	get '/' do
		# 'Hey there!'
	erb :coin_input, :locals => {:cents => '', :results => '', :message1 => ''}
end

post '/cents' do

	cents = params[:coin_input]

	results = final_coin_function(cents)

erb :coin_input, :locals => {:cents => cents, :results => results, :message1 => 'cents is equal to'}

end

