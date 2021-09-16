a = []
for i in 1..9
  for j in 1..9
    for k in 1..9
      a.push(100 * i + 10 * j + k)
    end
  end
end

t = "p cnf 729 CLAUSE\n"

for i in 1..a.length
  t = t + i.to_s + " "
  if (i - 1) % 9 == 8
    t = t + "0\n"
  end
end

for i in 1..9
  for j in 1..9
    for k in 1..9
      for l in (k + 1)..9
        t = t + (-1 * (a.index(i * 100 + j * 10 + k) + 1)).to_s + " "
        t = t + (-1 * (a.index(i * 100 + j * 10 + l) + 1)).to_s + " 0\n"
      end
    end
  end
end

for i in 1..9
  for j in 1..9
    for k in (i + 1)..9
      for l in 1..9
        t = t + (-1 * (a.index(i * 100 + j * 10 + l) + 1)).to_s + " "
        t = t + (-1 * (a.index(k * 100 + j * 10 + l) + 1)).to_s + " 0\n"
      end
    end
  end
end

for i in 1..9
  for j in 1..9
    for k in (j + 1)..9
      for l in 1..9
        t = t + (-1 * (a.index(i * 100 + j * 10 + l) + 1)).to_s + " "
        t = t + (-1 * (a.index(i * 100 + k * 10 + l) + 1)).to_s + " 0\n"
      end
    end
  end
end

for i in 1..3
  for j in 1..3
    for k in 1..3
      for l in 1..3
        for m in 1..9
          if i != k && j != l && !(i == k && j == l) && (k > i)
            t = t + (-1 * (a.index(i * 100 + j * 10 + m) + 1)).to_s + " "
            t = t + (-1 * (a.index(k * 100 + l * 10 + m) + 1)).to_s + " 0\n"
          end
        end
      end
    end
  end
end

for i in 1..3
  for j in 4..6
    for k in 1..3
      for l in 4..6
        for m in 1..9
          if i != k && j != l && !(i == k && j == l) && (k > i)
            t = t + (-1 * (a.index(i * 100 + j * 10 + m) + 1)).to_s + " "
            t = t + (-1 * (a.index(k * 100 + l * 10 + m) + 1)).to_s + " 0\n"
          end
        end
      end
    end
  end
end

for i in 1..3
  for j in 7..9
    for k in 1..3
      for l in 7..9
        for m in 1..9
          if i != k && j != l && !(i == k && j == l) && (k > i)
            t = t + (-1 * (a.index(i * 100 + j * 10 + m) + 1)).to_s + " "
            t = t + (-1 * (a.index(k * 100 + l * 10 + m) + 1)).to_s + " 0\n"
          end
        end
      end
    end
  end
end

for i in 4..6
  for j in 1..3
    for k in 4..6
      for l in 1..3
        for m in 1..9
          if i != k && j != l && !(i == k && j == l) && (k > i)
            t = t + (-1 * (a.index(i * 100 + j * 10 + m) + 1)).to_s + " "
            t = t + (-1 * (a.index(k * 100 + l * 10 + m) + 1)).to_s + " 0\n"
          end
        end
      end
    end
  end
end

for i in 4..6
  for j in 4..6
    for k in 4..6
      for l in 4..6
        for m in 1..9
          if i != k && j != l && !(i == k && j == l) && (k > i)
            t = t + (-1 * (a.index(i * 100 + j * 10 + m) + 1)).to_s + " "
            t = t + (-1 * (a.index(k * 100 + l * 10 + m) + 1)).to_s + " 0\n"
          end
        end
      end
    end
  end
end

for i in 4..6
  for j in 7..9
    for k in 4..6
      for l in 7..9
        for m in 1..9
          if i != k && j != l && !(i == k && j == l) && (k > i)
            t = t + (-1 * (a.index(i * 100 + j * 10 + m) + 1)).to_s + " "
            t = t + (-1 * (a.index(k * 100 + l * 10 + m) + 1)).to_s + " 0\n"
          end
        end
      end
    end
  end
end

for i in 7..9
  for j in 1..3
    for k in 7..9
      for l in 1..3
        for m in 1..9
          if i != k && j != l && !(i == k && j == l) && (k > i)
            t = t + (-1 * (a.index(i * 100 + j * 10 + m) + 1)).to_s + " "
            t = t + (-1 * (a.index(k * 100 + l * 10 + m) + 1)).to_s + " 0\n"
          end
        end
      end
    end
  end
end

for i in 7..9
  for j in 4..6
    for k in 7..9
      for l in 4..6
        for m in 1..9
          if i != k && j != l && !(i == k && j == l) && (k > i)
            t = t + (-1 * (a.index(i * 100 + j * 10 + m) + 1)).to_s + " "
            t = t + (-1 * (a.index(k * 100 + l * 10 + m) + 1)).to_s + " 0\n"
          end
        end
      end
    end
  end
end

for i in 7..9
  for j in 7..9
    for k in 7..9
      for l in 7..9
        for m in 1..9
          if i != k && j != l && !(i == k && j == l) && (k > i)
            t = t + (-1 * (a.index(i * 100 + j * 10 + m) + 1)).to_s + " "
            t = t + (-1 * (a.index(k * 100 + l * 10 + m) + 1)).to_s + " 0\n"
          end
        end
      end
    end
  end
end

File.open("sudoku_cnf.txt", mode = "w") { |f|
  f.write(t)
}
