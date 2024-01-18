
class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end
 class LinkedList
    attr_accessor :head, :tail
    
    def initialize
        @head = nil
        @tail = nil
    end

    
    def append(number)
        new_node = Node.new(number)
        if @head.nil?
        @head = new_node
        @tail = new_node
        else
        @tail.next_node = new_node
        @tail = new_node
        end
    end

    def prepend(number)
        new_node = Node.new(number)
        if @head.nil?
        @head = new_node
        @tail = new_node
        else
        new_node.next_node = @head
        @head = new_node
        end
    end
    
    def at(index)
        current_node = @head
        index.times do
        current_node = current_node.next_node
        end
        current_node
    end
    
    def insert_at(index, item)
        current_node = @head
        new_node = Node.new(item)
        if index == 0
        new_node.next_node = @head
        @head = new_node
        else
        (index - 1).times do
            current_node = current_node.next_node
        end
        new_node.next_node = current_node.next_node
        current_node.next_node = new_node
        end
    end
    
    def remove_at(index)
        current_node = @head
        if index == 0
        @head = current_node.next_node
        else
        (index - 1).times do
            current_node = current_node.next_node
        end
        current_node.next_node = current_node.next_node.next_node
        end
    end
    def contains?(value)
        current_node = @head
        while current_node != nil
        if current_node.value == value
            return true
        else
            current_node = current_node.next_node
        end
        end
        false
    end

    def to_s
        current_node = @head
        while current_node != nil
        print "( #{current_node.value} ) -> "
        current_node = current_node.next_node
        end
        print "nil"
    end
end