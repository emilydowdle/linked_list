class Node
  attr_accessor :node_value,
                :next_node

  def initialize(node_value, next_node=nil)
    @node_value = node_value
    @next_node = next_node
  end

end

class LinkedList

  attr_accessor :node,
                :head,
                :tail,
                :next_node,
                :node_value

  def initialize()

  end

  def prepend(value)
    if @head.nil?
      @head = Node.new(value)
    else
      temp = @head
      @head = Node.new(value)
      @head.next_node = temp
    end
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
      temp = @head
      until temp.next_node.nil?
        temp = temp.next_node
      end
      last_node = temp
      last_node.next_node = Node.new(value)
    end
  end

  def include?(value)
    if @head.nil?
      false
    else
      temp = @head
      until temp.next_node.nil?
        return true if temp.node_value == value
        temp = temp.next_node
      end
    end
  end

  def count()
    if @head.nil?
      0
    else
      count = 1
      temp = @head
      until temp.next_node.nil?
        temp = temp.next_node
        count += 1
      end
      count
    end
  end

  def play
    # return count
    sounds_to_play = ""
    temp = @head
    while temp != nil
      sounds_to_play << temp.node_value + " "
      temp = temp.next_node
    end
    return count
    puts "say -r 500 -v Boing #{sounds_to_play.strip!}"
  end

  def all
    string_to_print = ""
    temp = @head
    while temp != nil
      string_to_print << temp.node_value + " "
      temp = temp.next_node
    end
    string_to_print.strip!
  end

  def pop
  end

  def find(*locations)
    string_to_print = ""
    locations.each do |location|
      string_to_print << search_list_for_index(location) + " "
    end
    string_to_print.strip!
  end

  def search_list_for_index(location)
    index = 0
    temp = @head
    found_at_index = ""
    while temp != nil
      if index == location
        found_at_index << temp.node_value
      end
      index += 1
      temp = temp.next_node
    end
    found_at_index
  end

  # def find(location, *additional_location)

  #     return_values = ""
  #     while temp.next_node != nil

  #       index += 1
  #       temp = temp.next_node
  #     end
  #     return_values
  #   end
  # end

end

# input_file = ARGV[0]
# beats = File.read(input_file)
# linked_list = LinkedList.new(beats)

# puts "say -r 500 -v Boing #{linked_list}"
# puts "Played #{linked_list.count} sounds from #{linked_list}"
