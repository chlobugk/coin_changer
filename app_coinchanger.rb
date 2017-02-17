require 'sinatra'
require_relative 'coin_changer'

get '/' do
		# 'Hey there!'
	erb :coin_input, :locals => {:cents => '', :results => '', :message1 => ''}
end

post '/cents' do

	cents = params[:coin_input].to_i

	results = final_coin_changer(cents)

erb :coin_input, :locals => {:cents => cents, :results => results, :message1 => 'cents is equal to'}

end

