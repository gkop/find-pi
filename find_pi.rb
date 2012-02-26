# suppose you have a circle inscribed in a unit square

# circle_area = πr²
# square_area = (2r)(2r) = 4r²
# r² = square_area / 4
# circle_area = π * (square_area / 4)
# π = circle_area / (square_area / 4)
# π = 4 * (circle_area / square area)

# let's create a bunch of random points uniform on the square, count
# how many fall inside the circle, and use this number to derive π

num_points = ARGV[0] ? ARGV[0].to_i : 10000

points_inside_circle = 0
radius = 0.5 # circle inscribed in unit square
origin = {:x => radius, :y => radius}

num_points.times do
  point = {:x => rand, :y => rand} # rand with no args is on (0, 1.0]

  # pythagorean theorem for distance between origin and point
  distance = Math.sqrt((point[:x]-origin[:x])**2+(point[:y]-origin[:y])**2)
  if distance < radius 
    points_inside_circle += 1
  end
end

# see above
puts 4 * points_inside_circle.to_f / num_points

