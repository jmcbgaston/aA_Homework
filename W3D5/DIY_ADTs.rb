### Exercise 1 - Stack ###

class Stack

    attr_reader :show_stack

    def initialize
        @show_stack = []
    end

    def <<(ele)
        @show_stack << ele 
    end

    def [](idx)
        @show_stack[idx]
    end

    def []=(idx, val)
        @show_stack[idx] = val
    end

    def push(el)
        # Stack.push(el)
            # [x,x,x]
        @show_stack.push(el)
        # Stack.push(y)
            # [x,x,x,y] 
    end

    def pop
            # [x,x,x]
        # Stack.pop
        @show_stack.pop
            # [x,x]     x
    end

    def peek
            # [x,y,z]
        # Stack.peek
        @show_stack[-1]
            # [x,y,z] => z
    end

end

### Exercise 2 - Queue ###

class Queue

    attr_reader :the_queue

    def initialize
        @the_queue = []
    end

    # def <<(ele)
    #     @the_queue.unshift(ele)
    # end
    # omitted because performs in the manner that enqueue would; in the fashion off the class
    # kept because it's an interesting thought

    def [](idx)
        @the_queue[idx]
    end

    def []=(idx, val)
        @the_queue[idx] = val
    end

    def enqueue(el)
        # add to the back of queue
        # [a,b,c]
        # [d,a,b,c]
        @the_queue.unshift(el)
    end

    def dequeue
        # remove front of queue
        # [a,b,c]
        # [a,b]
        @the_queue.pop
        @the_queue
    end

    def peek
        @the_queue[-1]
    end

end

### Exercise 3 - Map ###

class Map

    attr_reader :show_map, :key, :value

    def initialize
        @show_map = []
        @show_map.each do |subArr|
            key = subArr[0]
            value = subArr[1]
        end
        @key = key
        @value = value
    end

    def set(key, value, idx = nil)
        # create new k,v pair 

        return @show_map << [key, value] if idx == nil

        if idx.is_a?(Integer)
            @show_map[idx] = [key, value]
            @show_map
        end  
    end

    def get(key)
        # gets the key from subArr
        # [ [a,1], [b,2] ]
        # map.get(b) => [b,2]
        if @show_map.flatten.include?(key)
            @show_map.each do |subArr|
                k = subArr[0]
                if k == key
                    return subArr
                end
            end
        else
            raise "no key found"
        end
    end

    def delete(key)
        if @show_map.flatten.include?(key)
            @show_map.each do |subArr|
                k = subArr[0]
                if k == key
                    @show_map.delete(subArr)
                end
            end
        else
            raise "no key found"
        end
    end

    def show
        @show_map
    end

end
