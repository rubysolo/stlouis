require_relative 'solid'
module StLouis
  class Writer
    def self.write(solid, output)
      output = write_to_file(output) unless output.respond_to?(:puts)

      output.puts "solid #{ solid.name }"

      solid.triangles.each do |triangle|
        normal = triangle.normal_vector

        output.puts "  facet normal #{ normal.x } #{ normal.y } #{ normal.z }"
        output.puts "    outer loop"

        triangle.points.each do |point|
          output.puts "      vertex #{ point.x } #{ point.y } #{ point.z }"
        end

        output.puts "    endloop"
        output.puts "  endfacet"
      end

      output.puts "endsolid #{ solid.name }"
    end
  end
end
