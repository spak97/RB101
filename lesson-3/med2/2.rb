a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# all same object_id because integers are immutable