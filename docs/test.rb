require "mp3info"

Mp3Info.open("media/VidaGeek_3x06.mp3") do |mp3info|
	puts mp3info.tag2.TXXX ? mp3info.tag2.TXXX.split("\u0000")[1] : mp3info.tag2.COMM[0] 
	#puts t
end
