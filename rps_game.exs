defmodule RPS do

  def play_game  do
    computer_choices = ["rock", "paper", "scissors"]
    c_choice = Enum.random(computer_choices)
    u_choice = String.trim(user_choice())
    find_winner([u_choice, c_choice])
  end

  def user_choice do
    IO.gets("Rock, Paper, Scissors: ")
  end

  def find_winner(choices) do
    player = Enum.at(choices, 0)
    computer = Enum.at(choices, 1)
    IO.puts(player)
    IO.puts(computer)

    cond do
      player == computer ->
        'Draw'
      player == "rock" ->
        cond do
          computer == "paper" ->
            'Machines win!'
          computer == "scissors" ->
            'Humans win!'
        end
      player == "scissors" ->
        cond do
          computer == "rock" ->
            "Machines win!"
          computer == "paper" ->
            "Humans win!"
        end
      player == "paper" ->
        cond do
          computer == "scissors" ->
            'Machines win!'
          computer == "rock" ->
            'Humans win!'
        end
    end  
  end

end

IO.puts(RPS.play_game)
