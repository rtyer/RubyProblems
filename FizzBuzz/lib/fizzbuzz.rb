class FizzBuzz
  def answer(number)
    result=''
    if(number % 3 == 0) then
      result+='fizz'
    end
    if(number % 5 == 0)then
      result+='buzz'
    end
    
    (result=='')?number:result
  end
  
end