require 'pry'

def my_all?(collection)
 i = 0
 # save the return values to the yield block
 block_return_value = []
  while i < collection.length
    # yield each element in the collection to the block.
   block_return_value << yield(collection[i])
   i += 1
 end
 block_return_value.include?(false) ? false : true
end

my_all?([1, 2, 3]) {|i| i < 2}
