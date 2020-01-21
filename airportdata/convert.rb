#!/usr/bin/ruby
ARGF.each do |line|
  if line =~ /^APT/ and line[14..26].rstrip =~ /^AIRPORT/
    puts "#{line[27..30].rstrip}|#{line[133..182].rstrip}|#{line[93..132].rstrip}|#{line[48..49]}|#{line[538..548].rstrip}|#{line[565..575]}|#{line[578..584].lstrip}"
    end
end
