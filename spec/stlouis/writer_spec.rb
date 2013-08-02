require 'spec_helper'
require 'st_louis/writer'
require 'stringio'

describe StLouis::Writer do
  it 'writes an ASCII STL file' do
    solid = StLouis::Solid.new do |s|
      s.name = "triangle"

      s.add_triangle(*[
        StLouis::Point.new(0, 0, 2),
        StLouis::Point.new(0, 2, 2),
        StLouis::Point.new(0, 0, 0),
      ])
    end

    output = StringIO.new
    StLouis::Writer.write(solid, output)

    output.string.must_equal IO.read(fixture_file("triangle-ascii.stl"))
  end
end
