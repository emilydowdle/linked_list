class Node
  attr_accessor :node_value,
                :next_node

  def initialize(node_value, next_node=nil)
    @node_value = node_value
    @next_node = next_node
  end

end
