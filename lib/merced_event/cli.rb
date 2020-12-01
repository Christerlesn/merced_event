class MercedEvent::CLI

  def call
    list_titles
    menu
    goodbye
  end
  
  def list_titles
    @events = MercedEvent::Event.current
    puts "Upcoming events:"
    @events.each.with_index(1) do |event, n|
      puts "#{n}. #{event.title}"
    end
  end
  
  def all_events
    @events.each.with_index(1) do |event, n|
      puts " #{n}. TITLE:#{event.title} - DATE: #{event.date} - #{event.time} - For more information, go to: #{event.url}"
    end
  end
  
  def menu
    input = nil 
    while input != "exit"
        puts "Please enter the number on the list corresponding to the event to see more. To see all, type 'all'. To exit, type 'exit'."
        input = gets.strip.downcase
        if input.to_i > 0
          event_detail = @events[input.to_i-1]
          puts "TITLE:#{event_detail.title}
          DATE: #{event_detail.date} 
          #{event_detail.time}
          For more information, go to: #{event_detail.url}"
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