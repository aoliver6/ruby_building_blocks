dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#Takes a string and an array containing several words
#Splits the string into an array and matches the string
#to words in the array. It then stores the number of matches in 
#a hash and displays them to the screen.
def substring(word, dictionary)
	count_words = {}
	word = word.split
		
	word.each do |word|	
		dictionary.each do |words|
			# Is below matching to each of these words. Does below contain all of the letters in the variable words?
			if word.downcase.match(/#{words}/)
				if count_words.has_key?(words)
					count_words[words] += 1
				else	
					count_words[words] = 1
				end
			end
		end
	end
	count_words.each do |key, value|
		puts "#{key}: #{value}"
	end
end

substring("Howdy partner, sit down! How's it going?", dictionary)
	
