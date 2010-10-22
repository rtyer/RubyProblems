require_relative 'spec_helper'
require 'roman_numeral_converter'

describe RomanNumeralConverter, "#convert" do
  before{@rnc=RomanNumeralConverter.new}
  specify{@rnc.convert(3).should == 'III'}
  specify{@rnc.convert(4).should == 'IV'}
  specify{@rnc.convert(5).should == 'V'}
  specify{@rnc.convert(7).should == 'VII'}
  specify{@rnc.convert(9).should == 'IX'}
  specify{@rnc.convert(10).should == 'X'}
  specify{@rnc.convert(13).should == 'XIII'} 
  specify{@rnc.convert(16).should == 'XVI'}
  specify{@rnc.convert(19).should == 'XIX'}       
  specify{@rnc.convert(20).should == 'XX'} 
  specify{@rnc.convert(25).should=='XXV'}      
  specify{@rnc.convert(29).should == 'XXIX'}         
  specify{@rnc.convert(39).should == 'XXXIX'}         
  specify{@rnc.convert(40).should == 'XL'}
  specify{@rnc.convert(43).should == 'XLIII'} 
  specify{@rnc.convert(45).should == 'XLV'}  
  specify{@rnc.convert(50).should == 'L'}
end