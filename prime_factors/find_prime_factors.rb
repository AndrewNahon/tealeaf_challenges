require 'prime'

class PrimeFactor

  def self.factor(number)
    #check if number is divided by 2. if yes, push to into an array
    #and divide number by 2. If not, see if number is divisible by subsequent prime.
    #repeat until the prime == number. 
    #seems to want to use regression. 
   factors = []
   divisor = 2
    while number > 1
      if Prime.prime?(divisor)
        if number % divisor == 0 
          factors << divisor
          number /= divisor
        else
          divisor += 1
        end
      else
        divisor += 1
      end
    end 
    factors
  end
end

p PrimeFactor.factor(10)

