def my_method(&block : Int32, Int32 -> Int32)
    1 + yield(2, 3)
  end
  
p  my_method { |x, y| x * y }