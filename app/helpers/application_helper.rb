require 'simple-rss'
require 'open-uri'
require 'cgi'

module ApplicationHelper

	def render_calendar_feed(from,to)
		url = "https://www.google.com/calendar/feeds/startupdigest.com_0i46olq295j7au2e9em3b7apr4@group.calendar.google.com/public/basic"
   	rss = SimpleRSS.parse open(url)
    items_with_date = rss.items.map do |item|
    	item[:date] = DateTime.parse(item.content.match(/When: (.*) to/).captures[0])
    	item[:description] = item.content.match(/Description: (.*)/).captures[0]
    	item[:content] = CGI.unescapeHTML(item.content)
    	item[:summary] = CGI.unescapeHTML(item.summary)
    	item[:eid] = item.link.match(/eid=(.*)/).captures[0]
    	item[:cal] = item.id.match(/\/feeds\/(.*)\/public\//).captures[0]
    	item
    end
    
    @items = items_with_date.sort_by { |x| x.date }.select { |x| x.date > Date.today }[from..to]
    render :partial => 'events/calendar'
  end
end
