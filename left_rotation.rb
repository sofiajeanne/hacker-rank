=begin
https://www.hackerrank.com/challenges/array-left-rotation

Given an array of n integers and a number, d, perform d left rotations on the array. Then print the updated array as a single line of space-separated integers.

n = number of integers
d = number of left rotations
print updated array as a single line of space separated integers

input:
line one: n d
line two: space-separated elements to rotate
=end

nd = $stdin.gets.chomp
nd_array = nd.split(" ").map(&:to_i)
n = nd_array[0]
d = nd_array[1]

ints = $stdin.gets.chomp
int_array = ints.split(" ").map(&:to_i)

rot_array = int_array.rotate(d).join(" ")
puts rot_array