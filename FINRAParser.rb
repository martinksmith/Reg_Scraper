require 'mechanize'

finra = Mechanize.new

page = finra.get('http://finra.complinet.com/en/display/display_viewall.html?rbid=2403&element_id=5447&record_id=6848&filtered_tag=')

puts page.at('h2').text.strip