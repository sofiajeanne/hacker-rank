=begin
https://www.hackerrank.com/challenges/2d-array

given a 6x6 2D array, we define an hourglass to be a subset of values with the following pattern in graphical representation:

abc
 d 
efg

calculate the hourglass sum for each hourglass in the array, then print the maximum hourglass sum. 
=end

arr = [
  [1, 1, 1, 0, 0, 0],
  [0, 1, 0, 0, 0, 0],
  [1, 1, 1, 0, 0, 0],
  [0, 9, 2, -4, -4, 0],
  [0, 0, 0, -2, 0, 0],
  [0, 0, -1, -2, -4, 0]
]

hourglass = Array.new(16,[])
counter = 0
arr.each_with_index do |line, i|
  if i <= 3
    line.each_with_index do |x, x_i|
      if x_i <= 3
        hourglass[counter] += [x, line[x_i + 1], line[x_i + 2]]
        hourglass[counter] += [arr[i + 1][x_i + 1]]
        hourglass[counter] += [arr[i + 2][x_i], arr[i + 2][x_i + 1], arr[i + 2][x_i + 2]]
        counter += 1
      end
    end
  end
end

hourglass.map! do |hg|
hg.inject(&:+)
end

peak = hourglass.sort!.last
puts peak