require 'set'

class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end

    def depth_first(node, visited = Set.new())
        # if this node has already been visited, then return early
        return nil if (visited.include?(node.val))

        # otherwise it hasn't yet been visited,
        # so print its val and mark it as visited.
        puts node.val
        visited.add(node.val)

        # then explore each of its neighbors
        node.neighbors.each do |neighbor|
            depth_first(neighbor, visited);
        end
    end

    def add_neighbor(node)
        self.neighbors << node
    end

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

# a.depth_first(f)

def depth_first(node, graph, visited = Set.new())
    return nil if visited.include?(node.to_sym)
    
    puts node
    visited.add(node.to_sym)
    
    graph[node.to_sym].each do |neighbor|
        depth_first(neighbor, graph, visited);
    end
end

graph = {
    'a': ['b', 'c', 'e'],
    'b': [],
    'c': ['b', 'd'],
    'd': [],
    'e': ['a'],
    'f': ['e']
}

# depth_first('f', graph)

def bfs(starting_node, target_value)
    queue = [starting_node]
    visited = Set.new()

    until queue.empty?
        node = queue.shift
        unless visited.include?(node)
        return node.val if node.val == target_value
        visited.add(node)
        queue += node.neighbors
        end
    end
    
    return nil
end

p bfs(a, "b")
p bfs(a, "f")
