class MercedEvent::CLI

  def call
    get_info
    list_titles
    menu
    goodbye
  end
  
  def get_info
    @events = MercedEvent::Event.events
  end
  
  def list_titles
    puts "Event Dates Update 2020:"
    @events.each.with_index(1) do |event, n|
      puts "#{n}. #{event.title}"
    end
  end
  
  def all_events
    @events.each.with_index(1) do |event, n|
      puts " #{n}. TITLE:#{event.title} - DATE: #{event.date} - Starts at:#{event.time_start}. Ends at: #{event.time_end} - For more information, go to: #{event.url}"
    end
  end
  
  def menu
    input = nil 
    until input == "exit"
        puts "Please enter the number on the list corresponding to the event to see more. To see all, type 'all'. To exit, type 'exit'."
        input = gets.strip.downcase
        if input.to_i > 0
          event_detail = @events[input.to_i-1]
          puts "TITLE:#{event_detail.title}
          DATE: #{event_detail.date} 
          Starts at: #{event_detail.time_start}
          Ends at: #{event_detail.time_end}
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