# Ruby 1.9.3

require 'rubygems'
require 'nokogiri'   
require 'open-uri'
require 'fileutils'

###################
#   FINRA

# Web paths
FINRA_BASE_URL = "http://finra.complinet.com/en/display/"
FINRA_RULE_URL = "display_main.html?rbid=2403&element_id="
FINRA_ALL_RULES_EXT = "display_viewall.html?rbid=2403&element_id=607&record_id=609"

# Create directory

FINRA_DATA_DIR = "raw_html/FINRA"
Dir.mkdir(FINRA_DATA_DIR) unless File.exists?(FINRA_DATA_DIR)

#page = Nokogiri::HTML(open("#{FINRA_BASE_URL}"+"#{FINRA_ALL_RULES_EXT}"))
#items = page.css('div.column-two div.viewall li')

#File.open("#{FINRA_DATA_DIR}/all_rules.txt", "w") { |file|  items.each do |item| file.write item end}