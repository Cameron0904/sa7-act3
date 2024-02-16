class Game
    R_POINTS = [5, 10, 15]
  
    def initialize
      @total = 0
    end
    
    def enter_room(num)
        points = R_POINTS[num - 1]
        @total += points
        puts "You entered Room #{num} and earned #{points} points."
    end
  
    def start
      puts "Welcome to the Adventure Game!"
      puts "You have #{@total} points."
  
      loop do
        puts "Choose a room (1-3) to enter or 'exit' to end the game:"
        input = gets.strip
  
        if input == 'exit'
          break
        elsif input == '1' || input == '2' || input == '3'
          enter_room(input.to_i)
        else
          puts "Invalid input! Please enter a number between 1 and 3 or 'exit'."
        end
      end
  
      puts "Game over! You collected a total of #{@total} points."
    end
end
  
game = Game.new
game.start
  
  