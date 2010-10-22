class RomanNumeralConverter
  def convert(number)
    result=''
    if((1..3).include?(number)) then
       number.times{result+='I'}
    elsif((4..8).include?(number)) then
      dif = number-5
      if(dif==-1) then 
        result = convert(1) + 'V'
      elsif(dif==0)
        result = 'V'
      else
        result='V'+convert(number-5)
      end
    elsif((9..39).include?(number)) then 
      dif = number-10
      if(dif==-1) then 
        result = convert(1) + 'X'
      elsif(dif==0)
        result = 'X'
      else
        result='X'+convert(number-10)
      end
    elsif((40..89).include?(number)) then
      dif = number-50
      if(dif<0)
        dif = number-40
        result = 'XL'
        result+=convert(dif) if(dif<10)
      elsif(dif==0) 
        result = 'L'
      else
        result='L'+convert(number-50)
      end
    end
    return result
  end
end