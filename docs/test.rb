require "mp3info"

Mp3Info.open("media/VidaGeek_13.mp3") do |mp3info|
	t = mp3info.tag2.COMM[0]
	puts t
end
