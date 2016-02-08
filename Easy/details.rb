#Nodir Nasirov
File.open(ARGV[0]).each_line do |line|
  line.chomp!
  rows = line.split ','
  steps = []
  rows.each do |row|
    if row.include? 'XY'
      steps = [0]
      break
    else
      steps << row.count('.')
    end
  end
  puts steps.min
end
