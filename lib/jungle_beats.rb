require './lib/node'
require './lib/linked_list'

input_file = ARGV[0]
beats = File.read(input_file)
linked_list = LinkedList.new(beats)

`say -r 500 -v Boing #{beats}`
puts "Played #{linked_list.count} sounds from #{input_file}"
