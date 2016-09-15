# https://www.hackerrank.com/challenges/security-key-spaces
# given a string with a length less than 10 and an integer e between 0 and 9 inclusive, shift each digit of the string by e places. 

# input:
# 391
# 2

@string = $stdin.gets.chomp
@e = $stdin.gets.chomp

def transform
  @e = @e.to_i
  size = @string.to_s.size
  if (size >=1 && size <=10) &&
    (@e >= 1 && @e <= 9)
    @string_array = @string.to_s.split(//).map! {|x| x.to_i}
    @string_array.map! do |num|
      if num + @e <=9
        num + @e
      elsif num + @e > 9
        num + @e - 10
      end
    end
    return @string_array.join
  else
      @string
  end
end

puts transform