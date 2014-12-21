#get input, ask for shift, take string, convert, output new string
#
def get_input
	terminate = ""
	while (terminate != "Q" && terminate != "quit" && terminate != "q")
		puts "Enter the message you want encypted." 
		message = gets.chomp
		puts "Enter the shift you want for your cipher. Enter a negative number to shift down the alphabet"
		shift = gets.chomp.to_i
		encypt(message,shift)
		puts "To quit, type quit, q, or Q. Otherwise, just hit enter."
		terminate = gets.chomp
	end
end

def encypt (message, shift)
	encypted_message = []
	message.scan (/./) do |letter|
		puts letter
		if letter.match(/[A-Z]/) 
			letter = letter.ord + shift
			if letter > 90
				letter -= 26
			elsif letter < 65
				letter += 26
			end
		elsif letter.match(/[a-z]/)
			letter = letter.ord + shift
			if letter > 122
				letter -= 26
			elsif letter < 97
				letter += 26
			end
		elsif letter.match(/[0-9]/)
			letter = letter.ord + shift
			if letter > 57
				letter -= 10
			elsif letter < 48
				letter += 10
			end
		end
		encypted_message.push(letter.chr)
	end
	puts encypted_message.join('')	
end

get_input

