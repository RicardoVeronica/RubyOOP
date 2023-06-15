dog = Object.new

puts dog
puts dog.inspect
puts dog.is_a? Object
puts dog.class
puts dog.object_id
puts dog.__id__

puts dog.singleton_class # when you create an object, you can use this method

puts '-----'

another_dog = dog.clone

puts another_dog
puts another_dog.inspect
puts another_dog.object_id

puts another_dog.singleton_class
