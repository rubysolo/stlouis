require_relative 'point'

module StLouis
  class Triangle < Struct.new(:v1, :v2, :v3)
    def points
      [v1, v2, v3]
    end

    def normal_vector
      u = v2 - v1
      v = v3 - v1

      x = u.y * v.z - u.z * v.y
      y = u.z * v.x - u.x * v.z
      z = u.x * v.y - u.y * v.x

      length = Math.sqrt(x * x + y * y + z * z)
      Point.new(x / length, y / length, z / length)
    end
  end
end
