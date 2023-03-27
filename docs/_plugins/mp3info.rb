require 'liquid'
require "mp3info"

module MP3Information
  def mp3_author(audio_file)
    Mp3Info.open("."+audio_file) do |mp3info|
        return mp3info.tag2.TPE1
    end
  end

  def mp3_title(audio_file)
    Mp3Info.open("."+audio_file) do |mp3info|
        return mp3info.tag2.TIT2
    end
  end

  def mp3_description(audio_file)
    Mp3Info.open("."+audio_file) do |mp3info|
        return mp3info.tag2.COMM[0]
    end
  end

  def mp3_album(audio_file)
    Mp3Info.open("."+audio_file) do |mp3info|
        return mp3info.tag2.TALB
    end
  end

  def mp3_track(audio_file)
    Mp3Info.open("."+audio_file) do |mp3info|
        return mp3info.tag2.TRCK
    end
  end

  def mp3_year(audio_file)
    Mp3Info.open("."+audio_file) do |mp3info|
        return mp3info.tag2.TYER
    end
  end

  def mp3_genre(audio_file)
    Mp3Info.open("."+audio_file) do |mp3info|
        return mp3info.tag2.TCON
    end
  end

  def mp3_length(audio_file)
    Mp3Info.open("."+audio_file) do |mp3info|
        return mp3info.length
    end
  end

  def mp3_length_hhmmss(audio_file)
    Mp3Info.open("."+audio_file) do |mp3info|
        t = mp3info.length
        return Time.at(t).utc.strftime("%H:%M:%S")
    end
  end
end

Liquid::Template.register_filter(MP3Information)