File.open(ARGV[0]).each_line do |line|
  string, comp_str = line.split ','
  last = string[(string.length-comp_str.length)..-1]
  puts "#{last==comp_str ? 1 : 0}"
end
