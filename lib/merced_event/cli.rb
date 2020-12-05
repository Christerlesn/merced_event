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
    puts "Events Update 2020:"
    @events.each.with_index(1) do |event, n|
      puts "#{n}. #{event.title}"
    end
  end
  
  def all_events
    @events.each.with_index(1) do |event, n|
      puts " #{n}. Title:#{event.title} - Date: #{event.first_day} #{event.time_start} - #{event.final_day} #{event.time_end}. For more information, go to: #{event.url}"
    end
  end
  
  def menu
    input = nil 
    until input == "exit"
        puts "Please enter the number on the list corresponding to the event to see more. To see all, type 'all'. To exit, type 'exit'."
        input = gets.strip.downcase
        
        if input == "all"
          all_events
        elsif input != "exit" && input.to_i > 0 && input.to_i <= @events.size
          puts "Title:#{@events[input.to_i-1].title} -
          Date: #{@events[input.to_i-1].first_day} #{@events[input.to_i-1].time_start} - #{@events[input.to_i-1].final_day} #{@events[input.to_i-1].time_end} 
          For more information, go to: #{@events[input.to_i-1].url}"
        else
        end
      end
    end
    
    def goodbye
      puts "Thanks for visiting!"
      
    end
    
end