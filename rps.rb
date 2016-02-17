class Game
  attr_accessor :player_one_choice, :computer

  def initialize
    self.player_one_choice = player_one_choice
    self.computer = computer
  end

def jedi_dual_start
  puts "+============================+"
  puts "| Jedi Rock, Paper, Scissors |"
  puts "| May The Force Be With You! |"
  puts "+============================+"
  jedi_person_input
end

def jedi_person_input
  puts "Choose Your Weapon And Dual! Rock, Paper, Or Scissors?"
  @player_one_choice = gets.chomp
  jedi_fate
end

def jedi_fate
  comp_jedi_choices = [ "rock", "paper", "sissors" ]
  computer = comp_jedi_choices.sample

  winner = "Tie" if @player_one_choice == "rock" && computer == "rock"
  winner = "Computer" if @player_one_choice == "rock" && computer == "paper"
  winner = "Player 1" if @player_one_choice == "rock" && computer == "scissors"
  winner = "Player 1" if @player_one_choice == "paper" && computer == "rock"
  winner = "Tie" if @player_one_choice == "paper" && computer == "paper"
  winner = "Computer" if @player_one_choice == "paper" && computer == "scissors"
  winner = "Computer" if @player_one_choice == "scissors" && computer == "rock"
  winner = "Player 1" if @player_one_choice == "scissors" && computer == "paper"
  winner = "Tie" if @player_one_choice == "scissors" && computer == "scissors"

  puts "Player one generated: #{player_one_choice}."
  puts "Computer generated :#{computer}."
  puts "The winner is #{winner}!"
end



game = Game.new
game.jedi_dual_start
end
