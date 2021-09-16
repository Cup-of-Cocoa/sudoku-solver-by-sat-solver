output = []
File.foreach(ARGV[0]) { |line|
  output << line.chomp.split(" ")
}
ans = output[1]

board = []
for i in 0..80
  target = ans.slice(i * 9, i * 9 + 9)
  board[i] = target.index(target.find { |i| i.to_i > 0 }) + 1
end

for i in 0..80
  if board[i] == nil
    print "0 "
  else
    print board[i].to_s + " "
  end
  if i % 9 == 8
    puts
  end
end
