def dog
  duck = Object.new

  duck.define_singleton_method(:noise) do
    'Quuuaack'
  end

  duck
end

donald = dog

puts donald
puts donald.respond_to? :noise
puts donald.methods false
puts donald.object_id

puts donald.noise

puts '-----'

# syntax sugar
class Duck
  def noise
    'Quuuaack'
  end
end

lucas = Duck.new

puts lucas.respond_to? :noise
puts lucas.methods false # does not show anything
puts lucas.object_id
puts lucas.noise
