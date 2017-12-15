require "/usr/local/lib/ruby/gems/1.9.1/gems/activesupport-2.3.5/lib/active_support/inflector.rb"

def island(i)
    case i
        when "NI"
            "Ni'ihau"
        when "KA"
            "Kaua'i"
        when "OA"
            "O'ahu"
        when "MO"
            "Moloka'i"
        when "LN"
            "Lana'i"
        when "MA"
            "Maui"
        when "KH"
            "Kaho'olawe"
        when "HA"
            "Hawai'i"
        else
            "Unknown"
    end
end

File.open(ARGV[0], "r") do |file|
  while line = file.gets
    lpart = line.split("|")
	print "b = Beach.create :name =>\"" + lpart[0].titlecase.gsub(/\"/,"\\\"") + "\", :latitude => \"" + lpart[1] + "\", :longitude => \"" + lpart[2] + "\", :island_id => Island.find(:first, :conditions => \"name = '" + island(lpart[5]).gsub(/'/,"\\\\'\\\\'") + "'\").id, :created_by_id => 1, :last_edited_by_id => 1\n"
  end
end

