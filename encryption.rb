# https://www.hackerrank.com/challenges/security-encryption-scheme
# determine the number of encryption functions that an integer representing the number of bijections contains.

@input = $stdin.gets.chomp

def bijection
  counter = @input
  product_array = [@input]
  until counter == 1
    counter -= 1
    product_array << counter
  end
  product_array.inject(&:*)
end

bijection