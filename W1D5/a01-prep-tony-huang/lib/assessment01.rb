require 'byebug'
class Array

  # Monkey patch the Array class and add a my_inject method. If my_inject receives
  # no argument, then use the first element of the array as the default accumulator.

  def my_inject(accumulator = nil)
    # debugger
    # self[0] if accumulator == nil

    arr = accumulator ? self.dup : self[1..-1].dup

    accumulator ||= self[0]

    arr.each do |el|
      accumulator = proc.call(accumulator, el)
    end

    accumulator
  end
end

# primes(num) returns an array of the first "num" primes.
# You may wish to use an is_prime? helper method.

def is_prime?(num)
  (2...num).each {|el| return false if num % el == 0}
  true
end

def primes(num)
  result = []
  primes_count = 0
  num_i = 2
  until primes_count == num
    if is_prime?(num_i)
      result << num_i
      primes_count += 1
    end
    num_i += 1
  end
  result
end

# Write a recursive method that returns the first "num" factorial numbers.
# Note that the 1st factorial number is 0!, which equals 1. The 2nd factorial
# is 1!, the 3rd factorial is 2!, etc.

def factorials_rec(num)
  return [1] if num == 1
  factorials_rec(num-1) + [(1...num).to_a.reduce(:*)]
end

class Array

  # Write an Array#dups method that will return a hash containing the indices of all
  # duplicate elements. The keys are the duplicate elements; the values are
  # arrays of their indices in ascending order, e.g.
  # [1, 3, 4, 3, 0, 3, 0].dups => { 3 => [1, 3, 5], 0 => [4, 6] }

  def dups
    result_Hash = Hash.new {[]}
    self.each_with_index {|el, idx| result_Hash[el] += [idx]}
    result_Hash.select {|k, v| v.length > 1}
  end
end

class String

  # Write a String#symmetric_substrings method that returns an array of substrings
  # that are palindromes, e.g. "cool".symmetric_substrings => ["oo"]
  # Only include substrings of length > 1.

  def symmetric_substrings
    result = []
    self.split("")
    self.substrings.each {|substring| result << substring if substring.is_palindrome?}

    result
  end

  def is_palindrome?
    return true if self == self.reverse
    false
  end

  def substrings
    substrings_arr = []
    i = 0
    while i < self.length - 1
      j = i + 1
      while j < self.length
        substrings_arr << self[i..j]
        j += 1
      end
      i += 1
    end
    substrings_arr
  end
end

class Array

  # Write an Array#merge_sort method; it should not modify the original array.

  def merge_sort(&prc)

    return self if self.length <= 1

    prc ||= Proc.new {|a,b| a <=> b}

    middle_idx = self.length / 2
      arr_left = self.dup[0...middle_idx]
      arr_right = self.dup[middle_idx..-1]

    Array.merge(arr_left.merge_sort(&prc), arr_right.merge_sort(&prc), &prc)
  end

  private
  def self.merge(left, right, &prc)
    result = []
    until left.empty? || right.empty?
      if prc.call(left.first, right.first) == -1
        result << left.shift
      else
        result << right.shift
      end
    end
    result + left + right
  end
end
