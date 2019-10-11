class Node
    attr_accessor :data, :left, :right
    
    def initialize(data)
        @data = data
        @left = nil
        @right = nil
    end
end
    
def displayTree(root, space = 0, t = 0)
    count = 3
    return if root == nil
    space += count
    
    displayTree(root.right, space, 1)
    
    for x in count .. space
        print " "
    end
    
    if t == 1 # Right Node
        puts "/ #{root.data}"
    elsif t == 2 # Left Node
        puts "\\ #{root.data}"
    else # Root Node
        puts root.data
    end
    
    displayTree(root.left, space, 2)
end

root = Node.new(1)
root.left = Node.new(2)
root.right = Node.new(3)
root.left.left = Node.new(4)
root.left.right = Node.new(5)
root.right.left = Node.new(6)
root.right.right = Node.new(7)
root.right.right.right = Node.new(8)
displayTree(root)