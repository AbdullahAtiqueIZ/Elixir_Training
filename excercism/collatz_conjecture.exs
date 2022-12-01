defmodule CollatzConjecture do
  require Integer
  @doc """
  calc/1 takes an integer and returns the number of steps required to get the
  number to 1 when following the rules:
    - if number is odd, multiply with 3 and add 1
    - if number is even, divide by 2
  """
  @spec calc(input :: pos_integer()) :: non_neg_integer()
  def calc(input) when is_integer(input) and input > 0 do
    calc(input, 0)
  end

  defp calc(1, steps), do: steps

  defp calc(input, steps) when Integer.is_even(input), do: calc(div(input,2), steps + 1)

  defp calc(input, steps) when Integer.is_odd(input), do: calc((input * 3)+1, steps + 1)
end
