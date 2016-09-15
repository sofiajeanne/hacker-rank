=begin
https://www.hackerrank.com/challenges/arrays-ds

given an array of n integers, print each element in reverse order as a single line of space-separated integers.

test input:
4
1 34 3 2
=end

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
sorted = arr.sort
if n.between?(1,10**3) && sorted[n-1].between?(1,10**4)
    arr = arr.reverse
    puts arr.join(' ')
end