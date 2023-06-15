class Door
  def initialize(locked)
    @locked = locked
  end

  def locked?
    @locked
  end

  def unlock!
    @locked = false
  end
end

puts my_door = Door.new(true)

puts "Door is locked? #{my_door.locked?}"

puts "Door is locked? #{my_door.unlock!}"
