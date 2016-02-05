File.open(ARGV[0]).each_line do |line|
  line.chomp!
  list1, list2 = line.split ';'
  nums1 = list1.split ','
  nums2 = list2.split ','
  intersection = nums1 & nums2
  puts intersection.to_s.delete(' []"')
end
