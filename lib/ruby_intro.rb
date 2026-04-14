# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  n = 0
  
  arr.each do |i|
    # returns the sum of its elements
    # if the array is empty, return zero
    n += i
  end
  
  n
end

def max_2_sum arr
  # for an empty array returns zero
  return 0 if arr.empty?
  # for an array with just one element, returns that element
  return arr[0] if arr.length == 1
  # for an array with two or more elements, returns the sum of the two largest elements (even if the two largest elements are the same value as well)
  sorted = arr.sort.reverse
  sorted[0] + sorted[1]
end

def sum_to_n? arr, n
  # should return false for any value of n, by definition
  return false if arr.length < 2

  # if any two elements in the array of integers sum to n, then return true
  arr.each_with_index do |i, index|
    arr.each_with_index do |j, index2|
      # don't add the same element to itself
      next if index == index2
      return true if i + j == n
    end
  end

  false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return false unless s.match?(/\A[a-zA-Z]/)
  !s.match?(/\A[aeiou]/i)
end

def binary_multiple_of_4? s
  if s.match?(/\A[01]+\z/)
    return s.to_i(2) % 4 == 0
  end
  false 
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    # isbn is a string and price is a positive floating-point number
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    # returns the price of the book formatted with a leading dollar sign and two decimal places
    format("$%.2f", @price)
  end
end
