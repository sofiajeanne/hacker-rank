#https://www.hackerrank.com/challenges/dynamic-array

file = File.open('./input.txt')

nq = file.gets.chomp

nq = nq.split(" ").map(&:to_i)
@n = nq[0]
quant = nq[1]
qs = []

quant.times do |query|
    query = file.gets.chomp
    query = query.split(" ").map(&:to_i)
    if query[0].between?(1,2) && query[1].between?(0,10**9) && query[2].between?(0,10**9)
        qs << query
    end
end

@lastAns = 0
seqList = Array.new
@n.times do
  seqList << []
end

if @n.between?(1,10**5) && quant.between?(1,10**5)
    qs.each_with_index do |q,index|
        if q[0] == 1
            i = ((q[1]^@lastAns) % @n)          
            seqList[i] << q[2]
        elsif q[0] == 2
            i = ((q[1]^@lastAns) % @n)
            i2 = q[2] % seqList[i].size
            @lastAns = seqList[i][i2]
            puts @lastAns
        end
    end
end