require 'minitest/spec'
require 'minitest/autorun'

$:.unshift File.expand_path('../../lib', __FILE__)

def fixture_path
  @fixture_path ||= File.expand_path("../fixtures", __FILE__)
end

def fixture_file(filename)
  File.join(fixture_path, filename)
end
