dog = Object.new

def dog.noise
  'Woooff'
end

puts dog

puts dog.respond_to? :noise

# puts dog.singleton_class.methods # all methods in object
# puts dog.methods # all methods in object
puts dog.methods false # just the method that you have created
puts dog.singleton_methods # just the method that you have created

puts '-----'

# using shovel operator
class << dog
  def noise
    'Woooff'
  end
end

puts dog
puts dog.respond_to? :noise
# puts dog.methods # all methods in object
puts dog.methods false # just the method that you created
puts dog.noise

# oneliner
# method = dog.noise { 'Woooff' }

puts '-----'

# singleton class
dog.singleton_class.send(:define_method, :noise) do
  'Woooff'
end

# oneliner
# dog.singleton_class.send(:define_method, :noise) { 'Woooff' }

puts dog.send(:noise)
puts dog.__send__(:noise)

# singleton method
dog.define_singleton_method(:noise) do
  'Woooff'
end

# oneliner
# dog.define_singleton_method(:noise) { 'Woooff' }

dog.singleton_class.send(:instance_method, :noise).bind(dog).call

# delete methods
dog.singleton_class.send(:undef_method, :noise)

# puts dog.respond_to? :noise
