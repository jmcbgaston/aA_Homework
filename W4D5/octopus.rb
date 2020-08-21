# Big O-ctopus and Biggest Fish
# A Very Hungry Octopus wants to eat the longest fish in an array of fish.

# => "fiiiissshhhhhh"

# Sluggish Octopus
# Find the longest fish in O(n^2) time. Do this by comparing all fish lengths to all other fish lengths

def slugish_octopus(arr) # quadratic
    largest = []
    arr.each_with_index do |e1, i1|
        arr.each_with_index do |e2, i2|
            if e1.length > e2.length
                largest = e1
            else
                largest = e2
            end
        end
    end
    largest.to_s
end

# arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# p slugish_octopus(arr)


# Dominant Octopus
# Find the longest fish in O(n log n) time. Hint: You saw a sorting algorithm that runs in O(n log n) in the Sorting Complexity Demo. Remember that Big O is classified by the dominant term.

class Array
    def dominant_octopus(&prc)
        return self if self.count < 2
        pivot = self.first
        left = self[1..-1].select { |ele| prc.call(pivot.length, ele.length) == -1 }   
        right = self[1..-1].select { |ele| prc.call(pivot.length, ele.length) != -1 }   
        left.dominant_octopus(&prc) + [pivot] + right.dominant_octopus(&prc)  
    end
end

# arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# sorted = arr.dominant_octopus { |a,b| a<=>b }
# p sorted[0]


# Clever Octopus
# Find the longest fish in O(n) time. The octopus can hold on to the longest fish that you have found so far while stepping through the array only once.

def clever_octopus(arr)
    arr.inject do |acc, el|
        if acc.length > el.length
            acc
        else
            el
        end
    end
end

# arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# p clever_octopus(arr)

# Dancing Octopus
# Full of fish, the Octopus attempts Dance Dance Revolution. The game has tiles in the following directions:

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

# To play the game, the octopus must step on a tile with her corresponding tentacle. We can assume that the octopus's eight tentacles are numbered and correspond to the tile direction indices.

# Slow Dance
# Given a tile direction, iterate through a tiles array to return the tentacle number (tile index) the octopus must move. This should take O(n) time.

def slow_dance(tile_direction, tiles_array)
    tiles_array.inject do |acc, el|
        if acc == tile_direction
            return tiles_array.index(acc)
        elsif el == tile_direction
            return tiles_array.index(el)
        else
            nil 
        end
    end
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
# p slow_dance("up", tiles_array)
# # > 0
# p slow_dance("right-down", tiles_array)
# # > 3
# p slow_dance("left-up", tiles_array)
# # > 7

# Constant Dance!
# Now that the octopus is warmed up, let's help her dance faster. Use a different data structure and write a new function so that you can access the tentacle number in O(1) time.

def fast_dance(tile_direction, new_tiles_data_structure)
    new_tiles_data_structure.each do |ele|
        return new_tiles_data_structure.index(ele) if ele == tile_direction
    end
end

new_tiles_data_structure = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

p fast_dance("up", new_tiles_data_structure)
# > 0

p fast_dance("right-down", new_tiles_data_structure)
# > 3