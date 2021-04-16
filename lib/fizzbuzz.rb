# frozen_string_literal: true

require 'pry'

class Fizzbuzz
  # If the number is divisible by 3 or contains a 3, print “Fizz”
  # If the number is divisible by 5 or contains a 5, print “Buzz”
  # If the number is divisible by 3 and 5, print “FizzBuzz”
  # Otherwise print the number.

  def self.fizz_buzz(num)
    num = num.to_i
    for i in 1..num do
      if i % 3 == 0 && i % 5 == 0
        puts 'FizzBuzz'
      elsif i.to_s.split('').any? { |char| char.eql?('3') } || i % 3 == 0
        puts 'Fizz'
      elsif i.to_s.split('').any? { |char| char.eql?('5') } || i % 5 == 0
        puts 'Buzz'
      else
        puts i
      end
    end
  end
end
