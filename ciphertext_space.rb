=begin
https://www.hackerrank.com/challenges/security-message-space-and-ciphertext-space

increment each element of the string by 1. If the integer is 9, it should increment to 0.

=end

input = $stdin.gets.chomp
input_array = input.to_s.chars.map(&:to_i)
output_array = input_array.map do |a|
  if a > 0 && a < 9
    a + 1
  elsif a == 9
    0
  end
end
puts output_array.join("")