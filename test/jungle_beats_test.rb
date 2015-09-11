gem 'minitest'              # => true
require 'minitest/autorun'  # => true
require 'minitest/pride'    # => true
require_relative '../lib/node'
require_relative '../lib/linked_list'

class TestNode < Minitest::Test

  def test_node_is_a_thing
    node = Node.new(1)
    assert node.node_value
  end

  def test_node_holds_value
    node = Node.new(2)
    assert_equal 2, node.node_value
  end

  def test_node_starts_with_no_next_node
    node = Node.new(30)
    refute node.next_node
  end

end


class TestLinkedList < Minitest::Test

  def test_create_head_in_linked_list
    list = LinkedList.new("")
    string = "boop"
    assert_equal 1, list.prepend(string)
  end

  def test_append_three_items_from_string
    list = LinkedList.new("")
    string = "boop beep bizzle wahoo"
    assert_equal 4, list.append(string)
  end

  def test_append_one_item
    list = LinkedList.new("")
    string = "boop"
    assert_equal 1, list.append(string)
  end

  def test_append_two_items
    list = LinkedList.new("")
    string = "boop bizzle"
    assert_equal 2, list.append(string)
  end

  def test_index_of_no_head
    list = LinkedList.new("")
    output = list.count
    assert_equal 0, output
  end

  def test_count_of_empty_item_list
    list = LinkedList.new("")
    string = ""
    assert_equal 0, list.prepend(string)
  end

  def test_count_of_one_item_list
    list = LinkedList.new("")
    string = "boop"
    assert_equal 1, list.prepend(string)
  end

  def test_count_three_item_list
    list = LinkedList.new("")
    string = "wahoo monster word"
    assert_equal 3, list.append(string)
  end

  def test_list_include_item_empty_list
    list = LinkedList.new("")
    output = list.include?("boo")
    assert_equal false, output
  end

  def test_list_include_item_three_item_list_false
    list = LinkedList.new("")
    string = "wahoo monster word"
    list.append(string)
    assert_equal true, list.include?("wahoo")
  end

  def test_play_items_in_list_and_return_count
    list = LinkedList.new("")
    string = "wahoo monster word"
    list.append(string)
    assert_equal 3, list.play
  end

  def test_puts_all_items_in_list_3
    list = LinkedList.new("")
    string = "wahoo monster word"
    list.append(string)
    assert_equal "wahoo monster word", list.all
  end

  def test_puts_all_items_in_list_6_items
    list = LinkedList.new("")
    string = "boop beep bizzle beeeeeep arrrrg wahoo"
    list.append(string)
    assert_equal "boop beep bizzle beeeeeep arrrrg wahoo", list.all
  end

  def test_count_items_in_list_6_items
    list = LinkedList.new("")
    string = "boop beep bizzle beeeeeep arrrrg wahoo"
    list.append(string)
    assert_equal 6, list.count
  end

  def test_prepend_6_items
    list = LinkedList.new("")
    string = "boop beep bizzle boop beep bizzle"
    assert_equal 6, list.prepend(string)
  end

  def test_play_6_items
    list = LinkedList.new("")
    string = "boop beep bizzle boop beep bizzle"
    list.prepend(string)
    assert_equal 6, list.play
  end

  def test_find_beat_at_index_one
    list = LinkedList.new("")
    string = "boop beep bizzle boop beep bizzle"
    list.prepend(string)
    assert_equal "beep bizzle", list.find(1,2)
  end

  def test_find_beat_at_index_two
    list = LinkedList.new("")
    string = "boop beep bizzle boop beep bizzle"
    list.append(string)
    assert_equal "bizzle", list.find(2,1)
  end

  def test_find_beat_at_index_multiple_parameters
    list = LinkedList.new("")
    string = "boop beep bizzle boop beep bizzle"
    list.append(string)
    assert_equal "beep bizzle", list.find(1, 2)
  end

  def test_if_list_of_6_includes_a_value
    list = LinkedList.new("")
    string = "boop beep bizzle boop beep bizzle"
    list.append(string)
    assert_equal false, list.include?("beeeeeeep")
  end

  def test_pops_off_items_from_end_of_list_and_returns_them
    list = LinkedList.new("")
    string = "boop beep bizzle boop beep bizzle"
    list.append(string)
    assert_equal "bizzle beep", list.pop(2)
  end

  def test_prepend_a_string
    list = LinkedList.new("")
    string = "boop beep bizzle"
    output = list.prepend(string)
    assert_equal 3, output
  end

  def test_inserts_one_item_into_list_at_any_point
    list = LinkedList.new("")
    string = "boop beep"
    list.append(string)
    assert_equal "boop yahoo beep", list.insert(1, "yahoo")
  end

  def test_inserts_multiple_items_into_list_at_any_point
    list = LinkedList.new("")
    string = "boop beep baaaap beeeeeeep wahoooooo yahoo word"
    list.append(string)
    assert_equal "boop beep baaaap yahoo microsoft google beeeeeeep wahoooooo yahoo word", list.insert(3, "yahoo microsoft google")
  end

end
