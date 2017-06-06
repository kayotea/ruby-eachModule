
module MyEnumerable
  def my_each
    print "self: ", self
    puts ""
    print "array length: ",self.length
    puts ""
    for i in 0...self.length
        puts self[i]
        y = yield(self[i])
        puts y
    end
  end
end

class Array
   include MyEnumerable
end
#[1,5,3,4].my_each { |i| puts i } # => 1 2 3 4
 [1,2,3,4].my_each { |i| puts i * 10 } # => 10 20 30 40