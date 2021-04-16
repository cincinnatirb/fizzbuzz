# frozen_string_literal: true

RSpec.describe Fizzbuzz do
  context "with 1 as the argument" do
    it do
      expect { Fizzbuzz.fizz_buzz(1) }.to output("1\n").to_stdout
    end
  end

  context "with 5 as the argument" do
    it do
      expect { Fizzbuzz.fizz_buzz(5) }.to output("1\n2\nFizz\n4\nBuzz\n").to_stdout
    end
  end

  context "with 15 as the argument" do
    it do
      expect { Fizzbuzz.fizz_buzz(15) }.to output("1\n2\nFizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz\n11\nFizz\nFizz\n14\nFizzBuzz\n").to_stdout
    end
  end

  context "with nil as the argument" do
    it do
      expect { Fizzbuzz.fizz_buzz(nil) }.to output("").to_stdout
    end
  end

  context "with a block as the argument" do
    it do
      expect { Fizzbuzz.fizz_buzz { puts "HERE" } }.to raise_error(ArgumentError)
    end
  end

  context "with -4 as the argument" do
    it do
      expect { Fizzbuzz.fizz_buzz(-4) }.to output("").to_stdout
    end
  end
end
