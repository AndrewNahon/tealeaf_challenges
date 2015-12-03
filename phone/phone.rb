class PhoneNumber
 
 attr_accessor :number
  

  def initialize(input)
    @number = clean_num(input) 
  end

 def clean_num(num)
  num = num.gsub(/\D/, '')
    if num.length == 11
      num.start_with?('1') ? (return num[1..10]) : (return nil)
    elsif num.length != 10
      return nil
    end
  num
 end

  def area_code
    if number.length == 11
      code = number.slice(1, 3)
    else
      code = number.slice(0 , 3)
    end
  end

  def first_three
    number.slice(3, 3)
  end

  def last_four
    number.slice(6, 4)
  end

  def to_s
    '(' + area_code + ') ' + first_three + '-' + last_four
  end

end









