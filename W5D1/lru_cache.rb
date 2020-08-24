class LRUCache

    attr_reader :cache, :limit

    def initialize(number)
        @limit = number
        @cache = []
    end
    
    def count
        # returns number of elements currently in cache
        cache.count
    end
    
    def add(ele)
        # adds element to cache according to LRU principle

        
        if cache.count < limit
            # if cache.include?(ele)
            #     cache.delete(ele)
            #     cache.push(ele)
            # end
            cache << ele
        else
            # if cache.include?(ele)
            #     cache.delete(ele)
            #     cache.push(ele)
            # end
            cache.shift
            cache << ele
        end
    end
    
    def show
        # shows the items in the cache, with the LRU item first
        cache
    end
    
    private
    # helper methods go here!
    
end

johnny_cache = LRUCache.new(4)
# p johnny_cache.count

# p johnny_cache.add("I walk the line")
# #     [ "I walk the line" ]
# p johnny_cache.add(5)
# #     [ "I walk the line", 5 ]
# p johnny_cache.count # => returns 2
# #     2
# p johnny_cache.show

p johnny_cache.add([1,2,3])
    # [ [1,2,3] ]
p johnny_cache.add(5)
    # [ [1,2,3], 5 ]
p johnny_cache.add(-5)
    # [ [1,2,3], 5 , -5 ]
p johnny_cache.add({a: 1, b: 2, c: 3})
    # [ [1,2,3], 5 , -5 , {a: 1, b: 2, c: 3} ]
p johnny_cache.add([1,2,3,4])
    # [ 5 , -5 , {a: 1, b: 2, c: 3}, [1,2,3,4] ]
p johnny_cache.add("I walk the line")
    # [ -5 , {a: 1, b: 2, c: 3}, [1,2,3,4], "I walk the line" ]
p johnny_cache.add(:ring_of_fire)
puts
# [ {a: 1, b: 2, c: 3}, [1,2,3,4], "I walk the line", :ring_of_fire ]
p johnny_cache.add("I walk the line")
puts
    # [ {a: 1, b: 2, c: 3}, [1,2,3,4], :ring_of_fire, "I walk the line" ]
p johnny_cache.add({a: 1, b: 2, c: 3})
    # [ [1,2,3,4], :ring_of_fire, "I walk the line", {a: 1, b: 2, c: 3} ]
# p johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
    # [ [1,2,3,4], :ring_of_fire, "I walk the line", {a: 1, b: 2, c: 3} ]