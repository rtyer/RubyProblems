require 'rspec'
require_relative '../lib/fizzbuzz.rb'

describe FizzBuzz, "#answer" do
  before {@fizzbuzz = FizzBuzz.new}
  
  it "should return the number when it is not divisible by 3 or 5" do
    @fizzbuzz.answer(2).should == 2
  end
  
  it "should return 'fizz' when number is divisble by 3 but not 5" do
    @fizzbuzz.answer(3).should == 'fizz'
    @fizzbuzz.answer(6).should == 'fizz'
    @fizzbuzz.answer(303).should == 'fizz'
  end
  
  it "should return 'buzz when number is divisible by 5 but not 3" do 
    @fizzbuzz.answer(5).should == 'buzz'
    @fizzbuzz.answer(10).should == 'buzz'
    @fizzbuzz.answer(100).should == 'buzz'
  end
  
  it "should return 'fizzbuzz' when number is divisible by both 3 and 5" do
    @fizzbuzz.answer(15).should=='fizzbuzz'
    @fizzbuzz.answer(300).should=='fizzbuzz'
  end
          
end
