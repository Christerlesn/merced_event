class MercedEvent::Event
  attr_accessor :title, :date, :time_start, :time_end, :time, :part_url, :url
  
  def self.current
    self.scraper
  end
  
  def self.scraper
    current_events = []
    
    current_events << MercedEvent::Scraper.scrape_1
    current_events << MercedEvent::Scraper.scrape_2
    current_events
  end
  
  # def self.scrape_1
  #   doc = Nokogiri::HTML(open("https://www.mercedcountyevents.com/new-events"))
    
  #     event = self.new
  #     event.title = doc.search(".eventlist-title")[0].text
  #     time_start = doc.search(".event-time-12hr-start")[0].text
  #     time_end = doc.search(".event-time-12hr-end")[0].text
  #     event.time = "Start time: #{time_start}. End time #{time_end}."
  #     event.date = doc.search(".event-date")[0].text
  #     part_url = doc.search(".eventlist-title-link")[0].attribute("href").value
  #     event.url = "https://www.mercedcountyevents.com"<< part_url    
      
  #     event
  # end
  
  #   def self.scrape_2
  #   doc = Nokogiri::HTML(open("https://www.mercedcountyevents.com/new-events"))
    
  #     event = self.new
  #     event.title = doc.search(".eventlist-title")[1].text
  #     # event.time_start = doc.search(".event-time-12hr-start")[1].text
  #     # event.time_end = doc.search(".event-time-12hr-end")[1].text
  #     # event.time = "Start time: #{time_start}. End time #{time_end}."
  #     event.date = doc.search(".event-date")[1].text
  #     part_url = doc.search(".eventlist-title-link")[1].attribute("href").value
  #     event.url = "https://www.mercedcountyevents.com"<< part_url    
      
  #     event
  # end
  
end