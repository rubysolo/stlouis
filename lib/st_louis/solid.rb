require_relative 'triangle'

module StLouis
  class Solid
    attr_reader :triangles
    attr_accessor :name

    def initialize
      @triangles = []
      yield self if block_given?
    end

    def add_triangle(v1, v2, v3)
      triangles << Triangle.new(v1, v2, v3)
    end
  end
end
