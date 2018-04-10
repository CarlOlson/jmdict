
require 'zlib'
require 'nokogiri'

require 'jmdict/version'

module JMdict

  def self.db
    @xml ||= File.open('JMdict_e.gz', 'r')
               .yield_self { |f| Zlib::GzipReader.new f }
               .yield_self { |f| f.read.gsub /\n/, '' }
               .yield_self { |f| Nokogiri::XML f }
  end

end
