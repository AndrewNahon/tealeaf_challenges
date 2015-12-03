require 'pry'

class Node
  attr_accessor :value, :next

  def initialize(val)
    @value = val
  end
end

class List
  include Enumerable
  
  attr_accessor :head, :tail

  def initialize(*objs)
    if objs.empty?
      @tail = @head = nil 
    else 
      objs.each {|obj| append(Node.new(obj))}
    end
  end

  def empty?
    !head && !tail
  end
  
  def append(node) #make node the tail of the list. 
    if empty?
      @head = @tail = node
    else
      @tail.next = node
      @tail = node
    end
  end

  def prepend(node)
    if empty?
      @head = @tail = node
    else
      node.next = @head
      @head = node
    end
  end

  def display
   each {|val| puts val}
  end

  def each
    current_node = @head
    loop do
      yield(current_node.value)
      if current_node == @tail
        break
      else
        current_node = current_node.next
      end
    end     
  end 

  def select
    new_list = List.new
    each {|node| new_list.append(node) if yield(node)}
    new_list
  end
end


list = List.new(1, 2, 3, 4)

list.display

new_list = list.select {|node| node.odd?}

new_list.display




