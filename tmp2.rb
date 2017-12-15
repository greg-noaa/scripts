File.open(ARGV[0], "r") do |file|
  first = ""
  while line = file.gets
    lpart = line.split("|")
    print lpart[5] + "\n" if lpart[5] != first
	first = lpart[5]
  end
end
