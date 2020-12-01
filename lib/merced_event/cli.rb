class MercedEvent::CLI

  def call
    list_titles
    menu
    goodbye
  end
  
  def list_titles
    @events = MercedEvent::Event.current
    puts "Upcoming events:"
    puts <<-DOC
    1. UC MERCED UPSTART PRESENTS A FREE ONLINE CONCERT WITH SALLYSWAG
    2. AMA WITH REBECCA RYALS, PHD. WORLD SOIL DAY IS 12/5. IN CELEBRATION, PLEASE JOIN US ON MONDAY, 12/7 FOR A SPECIAL AMA WITH SOIL HEALTH EXPERT, REBECCA RYALS, PHD!
    DOC
  end
  
  def all_events
    @events.each.with_index(1) do |event, n|
      puts " #{n}. TITLE:#{event.title} - DATE: #{event.date} - #{event.time} - For more information, go to: #{event.url}"
    end
  end
  
  def menu
    input = nil 
    while input != "exit"
        puts "For more info, please enter the number on the list corresponding to the event. To see all, type 'all'. To exit, type 'exit'."
        input = gets.strip.downcase
        if input.to_i > 0
          event_detail = @events[input.to_i-1]
          puts "TITLE:#{event_detail.title} - DATE: #{event_detail.date} - #{event_detail.time} - For more information, go to: #{event_detail.url}"
        elsif input == "all"
          all_events
        else
          puts "Unclear data provided. Please try again."
        end
      end
    end
    
    def goodbye
      puts "Thanks for visiting!"
      
    end
    
end