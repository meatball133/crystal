class CustomSet
    def initialize(elements : Array(Int32))
        @elements = Hash(Int32, Nil).new(elements.size) { |h, k| nil }
        p @elements
    end
end

p CustomSet.new([1, 2, 3, 4, 5])