File.open(ARGV[0]).each_line do |line|
  line.chomp!
  line = line.split(//).sort.join
  result = line.chars.permutation.map &:join
  puts result*","
end
