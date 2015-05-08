def echo(says)
	says
end

def shout(says)
	char_array = says.split("").collect! {|char| char.capitalize}
	char_array.join("")
end

def repeat(says, num=2)
	final = says
	(num - 1).times {final += " " + says}
	final
end

def start_of_word(says, num)
	says[0...num]
end 

def first_word(words)
	words.split(" ")[0]
end

def titleize(title)
	title_array = title.split(" ")
	title_array[0] = title_array[0].capitalize

	#Sample of words that are not capitalized in titles. 
	non_caps = ['a', 'an', 'and', 'the', 'for', 'nor', 'but', 'yet', 'so', 'at', 'after', 'along', 'for', 'from', 'of', 'on', 'to', 'with', 'without', 
	'on', 'to', 'with', 'without', 'over']

	title_array.collect! { |word| non_caps.include?(word) ? word : word.capitalize }
	title_array.join(" ")
end