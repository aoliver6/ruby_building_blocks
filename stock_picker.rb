#Allows the user to enter prices of stocks for however many
#days that they want to and passes the prices to the pick_time_to_buy_and_sell function.
def get_prices
	puts "Enter stock prices for a number of days seperated by a comma."
	puts "For example, for 4 days: 15,16,2,20. Do not use any spaces."
	puts "You can start after this prompt. Hit enter when done."
	prices = gets.chomp
	pick_time_to_buy_and_sell(prices)
end
# Takes the price of a stock certain days and calculates
# which days are the best to buy and sell them
def pick_time_to_buy_and_sell (prices)
	prices = prices.split(',')
	low = 100000000000
	high = 0
	i = 1
	l_day = 0
	h_day = 0
	prices.map do |price|	
		price = price.to_i
		if price >= high && low != 100000000000
			high = price
			h_day = i
		end
		if price < low && i != prices.size
			low = price
			l_day = i 
		end
		i += 1
	end
	puts "The best day to buy is day #{l_day} and the best day to sell is #{h_day}."
end
# A functiont that runs the program 
def run_program 
	terminate = ""
	while terminate != 'q' && terminate != 'Q' && terminate != 'quit'
		get_prices
		puts "To quit this program type 'q', 'Q', or 'quit'. Otherwise hit enter."
		terminate = gets.chomp
	end
end

run_program


