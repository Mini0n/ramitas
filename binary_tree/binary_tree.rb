require "byebug"

puts "Binary Tree"

class BinaryTree
  attr_accessor :root

  def initialize(node)
    self.root = node
  end

  def find(value=nil)
    return "no value to search" if value == nil
    return true if root.value == value

    find_helper(root, value)
  end

  def find_helper(node, value)
    return false if node.nil?
    return true if node.value == value

    found = false
    found = find_helper(node.left, value)
    return found if found == true
    find_helper(node.right, value)
  end

  def print
    puts "|  root  |  left  |  right  |"

    print_helper(root)
  end

  def print_helper(node=nil)
    # byebug
    return if node.nil?

    root = node.value.to_s
    left = node.left&.value&.to_s || ""
    right = node.right&.value&.to_s || ""

    root = root.center(8, " ")
    left = left.center(8, " ")
    right = right.center(9, " ")
    puts "|#{root}|#{left}|#{right}|"

    print_helper(node.left)
    print_helper(node.right)
  end

end



class Node
  attr_accessor :left, :right, :value

  def initialize(left=nil, right=nil, value=nil)
    self.left = left
    self.right = right
    self.value = value
  end


end


l4 = Node.new(nil, nil, 7)
r4 = Node.new(nil, nil, 8)

l3 = Node.new(l4, nil, 5)
r3 = Node.new(nil, r4, 6)

l2 = Node.new(l3, nil, 3)
r2 = Node.new(nil, r3, 4)

l1 = Node.new(l2, nil, 1)
r1 = Node.new(nil, r2, 2)

root = Node.new(l1, r1, 43)

bt = BinaryTree.new(root)

puts bt.print

puts "searching ' ' #{bt.find()}"
puts "searching 43: #{bt.find(43)}"
puts "searching 10: #{bt.find(10)}"
puts "searching  9: #{bt.find(9)}"
puts "searching  8: #{bt.find(8)}"
puts "searching  4: #{bt.find(4)}"
puts "searching  3: #{bt.find(3)}"




puts "Done."
