iterations = 10000000
insides = 0

iterations.times do
  x = rand
  y = rand

  dist = Math.sqrt((x-0.5)**2+(y-0.5)**2)
  if dist < 0.5
    insides+=1
  end
end

answer = 4 * insides.to_f/iterations

puts answer
