# When done, submit this entire file to the autograder.

# Part 1
def sum arr
  
  return arr.inject(0, :+)
  
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr.first if arr.length == 1

  return arr.sort{ |x, y| y <=> x }.take(2).reduce(:+)
end

def sum_to_n? arr, n
  return false if n==0
  (arr.empty? && n.zero?) || arr.permutation(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.length == 0
  end
  return true if (s =~ /[bcdfghjklmnprstvwxyz]/i)==0
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s) == "0"
    return true
  elsif /^[01]*(00)$/.match(s) 
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  #getters and setters
  attr_reader :isbn, :price

  def isbn= isbn
    if isbn == ''
      raise ArgumentError.new("Must have an ISB number")
    end
    @isbn = isbn
  end

  def price= price
    price = price.to_f
    if price <= 0
      raise ArgumentError.new("Must have price")
    end
    @price = price
  end

  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end

  def price_as_string
    return "$%0.2f"% [@price]
  end
end
