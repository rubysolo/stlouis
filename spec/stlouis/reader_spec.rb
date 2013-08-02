require 'spec_helper'
require 'st_louis/reader'

describe StLouis::Reader do
  it 'reads an ASCII STL file' do
    solid = StLouis::Reader.read(fixture_file("cube-ascii.stl"))
    solid.triangles.count.must_equal 12
  end
end
