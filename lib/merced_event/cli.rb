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
      puts " #{n}. Title:#{event.title} - Date: #{event.first_day} at:#{event.time_start} - #{event.final_day} #{event.time_end} - For more information, go to: #{event.url}"
    end
  end
  
  def menu
    input = nil 
    until input == "exit"
        puts "Please enter the number on the list corresponding to the event to see more. To see all, type 'all'. To exit, type 'exit'."
        input = gets.strip.downcase
        
        if input == "all"
          all_events
        elsif input != "exit" && input.to_i <= @events.size
          event_detail = @events[input.to_i-1]
          puts "Title:#{event_detail.title} -
          Date: #{event_detail.first_day} #{event_detail.time_start} - #{event_detail.final_day} #{event_detail.time_end} 
          For more information, go to: #{event_detail.url}"
        else input != "all" || input != "exit"
        end
      end
    end
    
    def goodbye
      puts "Thanks for visiting!"
      
    end
    
end