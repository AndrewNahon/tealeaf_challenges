class Node
  attr_accessor :value, :next

  def initialize(val)
    @value = val
  end
end

class List
  attr_accessor :head, :tail

  def initialize 
  end

  def empty?
    @tail.nil? && @head.nil?
  end

  def append(node)
    if self.empty?
      @tail = @head = node
    else
      @tail.next = node
      @tail = node
    end
  end

  def prepend(node)
    if self.empty?
      @head = @tail = node
    else
      node.next = @head
      @head = node
    end
  end

  def display
    each { |node| puts node.value}
  end

  def select
    new_list = List.new
    each do |node| 
      new_list.append(node) if yield(node)
    end
    new_list
  end

  def each
    current_node = @head
    loop do 
      yield(current_node)
      if current_node == @tail
        break
      else
        current_node = current_node.next 
      end
    end 
  end
end

list = List.new
node1 = Node.new(1)
node2 = Node.new(2)
node0 = Node.new(0)

list.append(node1)
list.append(node2)
list.prepend(node0)


list.display