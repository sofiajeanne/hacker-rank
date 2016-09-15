=begin

https://www.hackerrank.com/challenges/sparse-arrays

n = number of strings
string.length <= 20
q = number of queries

each query is a string. find how many times that string occurred in the N strings.

input format
line 1: value of n
next n lines contain a string
(n+2)nd line: value of q
next q lines contain a query string

test input:
4
aba
baba
aba
xzxb
3
aba
xzxb
ab

=end

def get_n
  n = $stdin.gets.chomp.to_i
  @strings = []
  n.times do
    string = $stdin.gets.chomp
    @strings << string
  end
end

def get_q
  @q = $stdin.gets.chomp.to_i
  @queries = []
  @q.times do
    query = $stdin.gets.chomp
    @queries << query
  end
end

def count_instances
  @instances = []
  counter = 0
  @queries.each do |query|
    @strings.each do |string|
      match = string.scan(/^#{query}$/).size
      counter += match
    end
    @instances << counter
    counter = 0
  end
end

get_n
get_q
count_instances
puts @instances