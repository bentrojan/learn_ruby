def add(a,b)
	a+b
end

def subtract(a,b)
	a-b
end

def sum(f)
	sum = 0
	f.each do |i|
		sum = sum+i
	end
	sum
end

def multiply(*a)
	a.inject(1) {|product, i| product * i}
end

def power(a,b)
	a**b
end

def factorial(a)
	b = a
	c = 1
	if ((a == 0) || (a == 1))
		return a
	end
	while b>1
		c = b*c
		b = b-1
	end
	return c
end
