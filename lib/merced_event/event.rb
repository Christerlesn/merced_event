class MercedEvent::Event
  attr_accessor :title, :first_day, :final_day, :time_start, :time_end, :url
  @@current = []

  def initialize(title, first_day, final_day, time_start, time_end, url)
    @title = title
    @first_day = first_day
    @final_day = final_day
    @time_start = time_start
    @time_end = time_end
    @url = url
    save
  end

  def self.events
    MercedEvent::Scraper.scrape_events if @@current.empty?
  end

  def save
    @@current << self
  end
    
  # def self.events
  #   all_events = []
  
  #   all_events << MercedEvent::Scraper.scrape_1
  #   all_events << MercedEvent::Scraper.scrape_2
  #   all_events
  # end
  
end