ruby cnf_make.rb sudoku_cnf.txt
ruby cnf_converter.rb input.cnf
minisat input.cnf output
ruby cnf_analyzer.rb output