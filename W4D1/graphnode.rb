require 'set'

class GraphNode
    attr_reader :value
    attr_accessor :neighbors 

    def initialize(value)
        @value = value 
        @neighbors = []
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


def bfs(starting_node, target_value)
    visited = Set.new
    queue = starting_node.neighbors
    queue.each do |node|
        return node if node.value == target_value
        visited.add(node.value)
        node.neighbors.each do |neighbor|
            queue << neighbor unless visited.include?(neighbor.value)
        end
    end
    nil
end

p bfs(a, "f")