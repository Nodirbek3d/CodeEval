File.open(ARGV[0]).each_line do |line|
line.chomp!
text, chars = line.split ', '
for i in 0...chars.length
  text.delete! chars[i]
end
puts text.strip
end
