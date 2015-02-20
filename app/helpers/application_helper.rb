require 'simple-rss'
require 'open-uri'
require 'cgi'


class String
	def capture_or_emtpy(regex)
		match = self.match(regex)
		return '' if match.nil?
		
		match.captures[0]
	end
end

module ApplicationHelper

	
	
	def render_calendar_feed(from,to)
		url = "https://www.google.com/calendar/feeds/galbraithwight%40gmail.com/public/basic"
   	rss = SimpleRSS.parse open(url)
    items_with_date = rss.items.map do |item|
    	item[:date] = DateTime.parse(item.content.match(/When: (.*) to/).captures[0]) unless item.content.match(/When: (.*) to/).nil?
    	item[:date] = DateTime.parse("1970/01/01") if item.content.match(/When: (.*) to/).nil?
    		
    	item[:description] = item.content.capture_or_emtpy(/Description: (.*)/)
    	item[:where] = item.content.capture_or_emtpy(/Where: (.*)/)
    	item[:content] = CGI.unescapeHTML(item.content)
    	item[:summary] = CGI.unescapeHTML(item.summary)
    	item[:eid] = item.link.capture_or_emtpy(/eid=(.*)/)
    	item[:cal] = item.id.capture_or_emtpy(/\/feeds\/(.*)\/public\//)
    	item
    end
    
    @items = items_with_date.sort_by { |x| x.date }.select { |x| x.date > Date.today }[from..to]
    render :partial => 'events/calendar'
  end
end
