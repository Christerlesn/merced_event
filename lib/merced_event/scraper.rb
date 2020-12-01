class MercedEvent::Scrapper
  attr_accessor :title, :date, :time_start, :time_end, :time, :part_url, :url
  
  def self.scrape_events
    doc = Nokogiri::HTML(open("https://www.mercedcountyevents.com/new-events"))
    index_url = doc.css(".eventlist-column-info")
    index_url.map do |detail|
      detail_hash = {:title => doc.search(".eventlist-title").text, :time_start => doc.search(".event-time-12hr-start").text, :time_end => doc.search(".event-time-12hr-end").text,
      :date => doc.search(".event-date").text, :part_url => doc.search(".eventlist-title-link").attribute("href").value
    end
    
    
    
    
    
    
    
    
      #     event = self.new
      # event.title = doc.search(".eventlist-title")[0].text
      # time_start = doc.search(".event-time-12hr-start")[0].text
      # time_end = doc.search(".event-time-12hr-end")[0].text
      # event.time = "Start time: #{time_start}. End time #{time_end}."
      # event.date = doc.search(".event-date")[0].text
      # part_url = doc.search(".eventlist-title-link")[0].attribute("href").value
      # event.url = "https://www.mercedcountyevents.com"<< part_url  
    
  end
  
  
  
  
end