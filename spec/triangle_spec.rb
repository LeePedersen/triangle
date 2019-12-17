require 'triangle'
require 'rspec'

describe '#Triangle' do
  it("returns triangle lengths when input triangle lengths") do
    new_triangle = Triangle.new(2,4,5)
    expect(new_triangle.sides).to(eq([2,4,5]))
  end
  it("returns triangle lengths when input triangle lengths") do
    new_triangle = Triangle.new(2,22,2)
    expect(new_triangle.is_real?).to(eq(false))
  end
  it("returns equilateral when input lengths are the same") do
    new_triangle = Triangle.new(2,2,2)
    expect(new_triangle.type).to(eq("equilateral"))
  end
  it("returns isosceles when input lengths are the same") do
    new_triangle = Triangle.new(3,2,2)
    expect(new_triangle.type).to(eq("isosceles"))
  end
end
