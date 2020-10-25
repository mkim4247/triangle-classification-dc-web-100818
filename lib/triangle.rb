  def kind 
    if one <= 0 || two <= 0 || three <= 0 
      raise TriangleError
    elsif one + two <= three || one + three <= two || two + three <= one 
      raise TriangleError
    end 
     
    if one == two && two == three 
      :equilateral 
    elsif one == two || one == three || two == three 
      :isosceles 
    else 
      :scalene 
    end 
  end 
  
  class TriangleError < StandardError 
  end 
  
end
