class MercedEvent::Event
  attr_accessor :title, :date, :time, :url
  
  def self.current
    event_1 = self.new 
    event_1.title = "UC MERCED UPSTART PRESENTS A FREE ONLINE CONCERT WITH SALLYSWAG."
    event_1.date = "MONDAY, DECEMBER 7, 2020."
    event_1.time = "12:00 PM - 1:00 PM"
    event_1.url ="fakeurlfornow.com"
    
    event_2 = self.new 
    event_2.title = "AMA WITH REBECCA RYALS, PHD. WORLD SOIL DAY IS 12/5. IN CELEBRATION, PLEASE JOIN US ON MONDAY, 12/7 FOR A SPECIAL AMA WITH SOIL HEALTH EXPERT, REBECCA RYALS, PHD!"
    event_2.date ="MONDAY, DECEMBER 7, 2020"
    event_2.time = "2:00 PM - 3:00 PM"
    event_2.url = "theotherurl.com"
    
    [event_1, event_2]
  end
end