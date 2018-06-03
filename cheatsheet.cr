#!/usr/bin/env crystal

CHEATSHEET = gets

cheatsheet = File.open("/home/gazbit/.cheatsheets/#{CHEATSHEET}", "r")

reader = ->(line : String) { puts line }

cheatsheet.each_line &reader

#IO.foreach("#{CHEATSHEET_DIR}/rails_cheatsheet.txt") &reader
