module StLouis
  class Point < Struct.new(:x, :y, :z)
    def -(other)
      self.class.new(x - other.x,
                     y - other.y,
                     z - other.z)
    end
  end
end
