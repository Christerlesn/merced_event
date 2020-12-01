class MercedEvent::Scraper
  
  def self.scrape_events
    doc = Nokogiri::HTML(open("https://www.mercedcountyevents.com/new-events"))
    
    event_info = doc.css(".eventlist-column-info")
        
    event_info.map do |e|
      title = e.search(".eventlist-title").text
      time_start = e.search(".event-time-12hr-start").text
      time_end = e.search(".event-time-12hr-end").text
      date = e.search(".event-date").text
      part_url = e.search(".eventlist-title-link").attribute("href").value
      url = "https://www.mercedcountyevents.com"<< part_url
      MercedEvent::Event.new(title, date, time_start, time_end, url)
    end
  end
  
end