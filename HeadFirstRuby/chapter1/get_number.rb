require 'byebug'
class GetNumber

  attr_reader :number
  attr_accessor :player_name, :guesses

  def initialize
    @number = rand(100) + 1
  end

  def start_the_game
    self.guesses = []
    puts "Welcome to guess that number!!"        
    puts "The goal is the guess the secret number between 1 and 100 (inclusive) in 10 tries."
    puts "Please enter your name: "
    self.player_name = gets.chomp
    puts "Welcome #{player_name}!!  Let's start the game!!"
    puts
  end

  def get_and_evaluate_a_guess
    if guesses.length > 0
      puts "Prior guesses: #{guesses.join(" ")}"    
    end
    puts "Make a guess at the secret number (between 1 and 100 inclusive): "
    guess = gets.chomp.to_i
    guesses.push(guess)
    if guess > number
      puts "#{self.player_name} the guess was too high!!"
    elsif guess < number
      puts "#{self.player_name} the guess was too low!!"
    else
      puts "Correct!! #{self.player_name}, you will the game!!"
    end        
  end

  def play_game
    start_the_game
    while guesses.length < 10
      get_and_evaluate_a_guess
      break if guesses.last == number
    end
    if guesses.length >= 10
      puts "#{self.player_name} you took too many guesses, the game is over."
      puts "The secret number was #{self.number}"
    end
  end
end

game = GetNumber.new
game.play_game