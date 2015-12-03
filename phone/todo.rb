class TodoList
  include Enumerable

  attr_accessor :todos

  def self.new_array

  end

  def initialize
    @todos = []
  end

  def empty?
    todos.empty?
  end

  def <<(item)
    todos << item
  end

  def size
    todos.size
  end

  def first
    todos[0]
  end

  def each
    i = 0
    while i < todos.size
      yield todos[i]
      i += 1
    end
    self
  end

 
end