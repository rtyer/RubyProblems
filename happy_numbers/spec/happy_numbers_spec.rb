require_relative 'spec_helper'
require 'happy_numbers'

describe HappyNumbers,"#happy?" do
  before{@happy = HappyNumbers.new}
  it "should identify happy numbers as happy!" do
    @happy.happy?(10).should == true
  end
end