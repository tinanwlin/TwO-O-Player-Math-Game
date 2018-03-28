require './player.rb'
require './question.rb'

class Game

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2) 
    
    @current_player = @player1
  end

  def print_score
    puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
  end 

  def winner_text
    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
  end 

  def start
    while @player1.lives > 0 && @player2.lives > 0
      question = Question.new
      print "#{@current_player.name}: #{question.text} \n> "
      player_answer = gets.chomp.to_i
      if player_answer == question.answer
        puts "Bingo! You are correct."
      else 
        puts "Oh no! Wrong answer."
        @current_player.lose_life
      end
      puts print_score
      if @current_player.lives != 0
        puts "----- NEW TURN -----"
      end

      if @current_player.name == @player1.name
        @current_player = @player2
      else
        @current_player = @player1
      end

    end 
    puts winner_text
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

end
