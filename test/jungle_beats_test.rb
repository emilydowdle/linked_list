gem 'minitest'              # => true
require 'minitest/autorun'  # => true
require 'minitest/pride'    # => true
require_relative 'jungle_beats'

class TestNode < Minitest::Test

  def test_node_is_a_thing
    skip
    node = Node.new(1)
    assert node.node_value
  end

  def test_node_holds_value
    skip
    node = Node.new(2)
    assert_equal 2, node.node_value
  end

  def test_node_starts_with_no_next_node
    skip
    node = Node.new(30)
    refute node.next_node
  end

end


class TestLinkedList < Minitest::Test

  def test_create_new_node_in_linked_list
    skip
    list = LinkedList.new
    node_value = "boop"
    output = list.prepend(node_value)
    assert_equal "boop", output.node_value
  end

  def test_check_next_node_default_nil_in_linked_list
    skip
    list = LinkedList.new
    node_value = "boop"
    output = list.prepend(node_value)
    assert_equal nil, list.next_node
  end

  def test_create_head_in_linked_list
    skip
    list = LinkedList.new
    node_value = "boop"
    output = list.prepend(node_value)
    assert_equal "boop", list.head.node_value
  end

  def test_append_three_items_from_array
    skip
    list = LinkedList.new
    node_values = ["boop", "beep", "bizzle"]
    output = node_values.each { |node| list.prepend(node) }
    assert_equal "beep", list.head.next_node.node_value
  end

  def test_append_one_item
    skip
    list = LinkedList.new
    value = "boop"
    output = list.append(value)
    assert_equal "boop", list.head.node_value
  end

  def test_append_two_items
    skip
    list = LinkedList.new
    node_values = ["boop", "beep", "bizzle"]
    output = node_values.each { |node| list.append(node) }
    assert_equal "boop", list.head.node_value
  end

  def test_index_of_no_head
    skip
    list = LinkedList.new
    output = list.count
    assert_equal 0, output
  end

  def test_index_of_one_item_list
    skip
    list = LinkedList.new
    output = list.count
    assert_equal 0, output
  end

  def test_count_three_item_list
    skip
    list = LinkedList.new
    node_values = ["boop", "beep", "bizzle"]
    output = node_values.each { |node| list.append(node) }
    assert_equal 3, list.count
  end

  def test_list_include_item_empty_list
    skip
    list = LinkedList.new
    output = list.include?("boo")
    assert_equal false, output
  end

  def test_list_include_item_three_item_list
    skip
    list = LinkedList.new
    node_values = ["boop", "beep", "bizzle"]
    output = node_values.each { |node| list.append(node) }
    assert_equal true, list.include?("boop")
  end

  def test_play_items_in_list_and_return_count
    skip
    list = LinkedList.new
    node_values = ["boop", "beep", "bizzle"]
    output = node_values.each { |node| list.append(node) }
    assert_equal 3, list.play
  end

  def test_puts_all_items_in_list_3
    skip
    list = LinkedList.new
    node_values = ["boop", "beep", "bizzle"]
    output = node_values.each { |node| list.append(node) }
    assert_equal "boop beep bizzle", list.all
  end

  def test_puts_all_items_in_list_6_items
    skip
    list = LinkedList.new
    node_values = ["boop", "beep", "bizzle", "beeeeeep", "arrrrg", "wahoo"]
    output = node_values.each { |node| list.append(node) }
    assert_equal "boop beep bizzle beeeeeep arrrrg wahoo", list.all
  end

  def test_count_items_in_list_6_items
    skip
    list = LinkedList.new
    node_values = ["boop", "beep", "bizzle", "beeeeeep", "arrrrg", "wahoo"]
    output = node_values.each { |node| list.append(node) }
    assert_equal 6, list.count
  end

  def test_prepend_6_items
    list = LinkedList.new
    node_values = ["boop", "beep", "bizzle", "beeeeeep", "arrrrg", "wahoo"]
    output = node_values.each { |node| list.append(node) }
    assert_equal "bizzle", list.head.next_node.next_node.node_value
  end

  def test_play_6_items
    list = LinkedList.new
    node_values = ["boop", "beep", "bizzle", "beeeeeep", "arrrrg", "wahoo"]
    output = node_values.each { |node| list.append(node) }
    assert_equal 6, list.play
  end

  def test_find_beat_at_index_one
    list = LinkedList.new
    node_values = ["boop", "beep", "bizzle"]
    output = node_values.each { |node| list.append(node) }
    assert_equal "beep", list.find(1)
  end

  def test_find_beat_at_index_two
    list = LinkedList.new
    node_values = ["boop", "beep", "bizzle"]
    output = node_values.each { |node| list.append(node) }
    assert_equal "bizzle", list.find(2)
  end

  def test_find_beat_at_index_multiple_parameters

    list = LinkedList.new
    node_values = ["boop", "beep", "bizzle"]
    output = node_values.each { |node| list.append(node) }
    assert_equal "beep bizzle", list.find(1, 2)
  end

  def test_if_list_of_6_includes_a_value
    skip
    list = LinkedList.new
    node_values = ["boop", "beep", "bizzle", "beeeeeep", "arrrrg", "wahoo"]
    output = node_values.each { |node| list.append(node) }
    assert_equal true, list.include?("beeeeeep")
  end

  def test_pops_off_items_from_end_of_list_and_returns_them
    skip
    list = LinkedList.new
    node_values = ["boop", "beep", "bizzle", "beeeeeep", "arrrrg", "wahoo"]
    output = node_values.each { |node| list.append(node) }
    assert_equal "arrrrg wahoo", list.pop(2)
  end

  def test_puts_all_items_in_list
    skip
    list = LinkedList.new
    node_values = ["boop", "beep", "bizzle"]
    output = node_values.each { |node| list.append(node) }
    assert_equal "bizzle, beep", list.find(0,1)
  end

  def test_inserts_items_into_list_at_any_point
    skip
    skip
  end

  def test_finds_beats_by_index
    skip
    skip
  end


end
