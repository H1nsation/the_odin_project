def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(array)
	if array.size == 0 
		return 0
	else 
		sum = 0
		array.each {|n| sum += n}
		return sum
	end
end

def multiply(array)
	if array.size == 0 
		return 0
	else
		product = 1
		(0...array.size).each { |n| product = product * array[n]}
		return product
	end
end

def power(a, b)
	a ** b
end

def factorial(n)
	if n == 0
		return 1
	else 
		product = 1
		(1..n).each { |e| product = product * e }
		return product
	end
end