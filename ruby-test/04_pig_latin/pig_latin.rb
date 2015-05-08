module Translator
	@vowels = ['a', 'e', 'i', 'o', 'u']

	def self.translate_word(word)
		word_array = word.split("")
		new_word = ""
		front = ""

		word_array.each {|letter| 
			if (front + letter).include? "qu" 
				return word_array[(front.length + letter.length)...word_array.size].join("") + front + letter + "ay"
			elsif @vowels.include?(letter)
				return word_array[front.length...word_array.size].join("") + front + "ay" 
			else 
				front += letter
			end
		}
	end
end

def translate(phrase)
	phrase_array = phrase.split(" ")
	modified_phrase = phrase_array.collect! {|word| word = Translator.translate_word(word)}
	phrase_array.join(" ")
end