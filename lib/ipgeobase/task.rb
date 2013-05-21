# coding: utf-8

module Ipgeobase
  module Task
    def self.obtain_content_by_filename(filename)
      file = ::Rails.root.join('tmp', filename)
      if File.file? file
        puts 'using local copy'
        `iconv -f cp1251 -t utf8 #{file}`
      else
        puts 'downloading database'
        url = 'http://ipgeobase.ru/files/db/Main/geo_files.tar.gz'
        `curl -0 #{url} | tar -xzO #{filename} | iconv -f cp1251 -t utf8`
      end
    end
  end
end
