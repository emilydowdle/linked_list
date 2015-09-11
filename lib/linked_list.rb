require './lib/node'

class LinkedList

  attr_accessor :node,
                :head,
                :next_node,
                :node_value

  def initialize(string)
    @head = nil
    self.append(string)
  end

  def prepend(string)
    parse_string(string).reverse.each do |element|
      if @head.nil?
        head_nil_new_node(element)
      else
        prepend_head_transfer(element)
      end
    end
    parse_string(string).length
  end

  def head_nil_new_node(value)
    @head = Node.new(value)
  end

  def prepend_head_transfer(value)
    temp = @head
    @head = Node.new(value)
    @head.next_node = temp
  end

  def append(string)
    parse_string(string).each do |element|
      if @head.nil?
        head_nil_new_node(element)
      else
        append_after_head(element)
      end
    end
    parse_string(string).length
  end

  def append_after_head(element)
    temp = @head
    until temp.next_node.nil?
      temp = temp.next_node
    end
    last_node = temp
    last_node.next_node = Node.new(element)
  end

  def parse_string(string)
    string.split(" ")
  end

  def include?(value)
    if @head.nil?
      false
    else
      include_locate_value(value)
    end
  end

  def include_locate_value(value)
    temp = @head
    until temp.next_node.nil?
      return true if temp.node_value == value
      temp = temp.next_node
    end
    false
  end

  def count()
    if @head.nil?
      0
    else
      count_until_loop
    end
  end

  def count_until_loop
    count = 1
    temp = @head
    until temp.next_node.nil?
      temp = temp.next_node
      count += 1
    end
    count
  end

  def play
    sounds_to_play = ""
    temp = @head
    play_while_loop(temp, sounds_to_play)
    `say -r 500 -v Boing #{sounds_to_play.strip!}`
    return count
  end

  def play_while_loop(temp, sounds_to_play)
    while temp != nil
      sounds_to_play << temp.node_value + " "
      temp = temp.next_node
    end
  end

  def all
    string_to_print = ""
    temp = @head
    all_while_loop(temp, string_to_print)
    string_to_print.strip!
  end

  def all_while_loop(temp, string_to_print)
    while temp != nil
      string_to_print << temp.node_value + " "
      temp = temp.next_node
    end
  end

  def pop(num)
    if @head.nil?
      "There's nothing here to pop."
    else
      popped_values = ""
      num.times do
        pop_until_loop(popped_values)
      end
      popped_values.strip!
    end
  end

  def pop_until_loop(popped_values)
    temp = @head
    until temp.next_node.nil?
      temp = temp.next_node
    end
    popped_values << temp.node_value + " "
    remove_last_element
  end

  def remove_last_element
    temp = @head
    until temp.next_node.next_node.nil?
      temp = temp.next_node
    end
    temp.next_node = nil
  end

  def find(start, count)
    result = ""
    count.times do |index|
      result << search_list_for_index(start + index) + " "
    end
    result.strip!
  end

  def search_list_for_index(location)
    index = 0
    temp = @head
    found_at_index = ""
    while_loop_for_index_search(location, temp, index, found_at_index)
    found_at_index
  end

  def while_loop_for_index_search(location, temp, index, found_at_index)
    while temp != nil
      index_location_comparison(location, temp, index, found_at_index)
      index += 1
      temp = temp.next_node
    end
  end

  def index_location_comparison(location, temp, index, found_at_index)
    if index == location
      found_at_index << temp.node_value
    end
  end

  def insert(num, string)
    left = find(0, num)
    right = find(num, count - num)
    left = "" if left.nil?
    right = "" if right.nil?
    initialize(left + " " + string + " " + right)
    all
  end

end
