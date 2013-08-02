require_relative 'solid'

module StLouis
  class Reader
    def self.read(path)
      Solid.new do |solid|
        File.open(path) do |stl|
          vertices = []

          stl.each_line do |line|
            case line
            when /outer loop/
              vertices = []
            when /endloop/
              solid.add_triangle(*vertices)
            when /vertex/
              _, x, y, z = line.chomp.split(/\s+/)
              vertices << Point.new(x, y, z)
            end
          end
        end
      end
    end
  end
end
