File.open(ARGV[0]).each_line do |line|
  line.chomp!
  f1 = 0
  f2 = 1
  fn = line
  (1...line.to_i).each do
    fn = f1+f2
    f1 = f2
    f2 = fn
  end
  puts fn
end
