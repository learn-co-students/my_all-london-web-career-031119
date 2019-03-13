require 'pry'
def my_all?(collection)
    i = 0
    block_return_values = [] #The return value of all? is simply true or false. 
    while i < collection.length
      block_return_values << yield(collection[i]) #when this code hits yield is going to move to the block code
      i = i + 1
    end
    if block_return_values.include?(false)
      false
    else
      true
    end
  end

my_all?([1,2,3]) {|i| i < 2} 
binding.pry

# If any element in the collection evaluates to false, then all? should return false. 
# If they are all true, the method should return true.

# pesudeo code
# def my_all?([1,2,3])
#     i = 0
#     while i < 3
#       yield(1)
#       i = 0 + 1
#     end
#   end
#   my_all?([1,2,3]) {|1| 1 < 2}
x =3 