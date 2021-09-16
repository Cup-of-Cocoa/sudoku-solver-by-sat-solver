a = []
for i in 1..9
  for j in 1..9
    for k in 1..9
      a.push(100 * i + 10 * j + k)
    end
  end
end

t = ""
File.open("sudoku_cnf.txt") { |f|
  t = f.read
}

board = []
File.foreach(ARGV[0]) { |line|
  board << line.chomp.split(", ").map { |item| item.to_i }
}

count = 0
for i in 0..8
  for j in 0..8
    if board[i][j] != 0
      count = count + 1
      t = t + (a.index((i + 1) * 100 + (j + 1) * 10 + board[i][j]) + 1).to_s + " 0\n"
    end
  end
end

t = t.gsub("CLAUSE", (10287 + count).to_s)

File.open("input" + ARGV[0].slice(7) + ".cnf", mode = "w") { |f|
  f.write(t)
}
