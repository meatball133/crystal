class PalindromeProducts
    getter min, max
    def initialize(@min : Int32, @max : Int32) 
    end

    def largest
        raise ArgumentError.new if min > max
        result_products = Array(Array(Int32) | Int32).new
        result = 0_i64
        (min...max).reverse_each do |number_1|
            was_bigger = false
            (number_1...max).reverse_each do |number_2|
                if number_1 * number_2 > result
                    was_bigger = true
                    test_value  = (x*z).to_s
                    if test_value == test_value.reverse
                        result_products = [[number_1, number_2]]
                        result = test_value.to_i
                    end
                elsif number_1 * number_2 == result
                result_products << [number_1, number_2]
                end
            end
            unless was_bigger
                break
            end 
        end
        if result == 0
            result = nil
        end
        result, result_products
    end
    def smallest
    0
    end
end