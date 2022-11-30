defmodule GuessingGame do
  def compare(secret_number, guess) when (is_integer(guess) and is_integer(secret_number)) do
    cond do
      secret_number == guess ->
        "Correct"
      guess > secret_number + 1 ->
        "Too high"
      guess < secret_number - 1 ->
        "Too low"
      (guess + 1 == secret_number) || (guess - 1 == secret_number) ->
        "So close"
    end
  end

  def compare(secret_number, guess) when is_atom(guess) do
    if guess == :no_guess do
      "Make a guess"
    end
  end

  def compare(secret_number) do
    cond do
      is_integer(secret_number) ->
        "Make a guess"
    end
  end
end
