defmodule Recursion do
  @moduledoc """
  Voici un commentaire
  """
  def sum_list([head | tail], acc) do
    sum_list(tail, acc + head)
  end

  @acc 0
  def sum_list([], acc) do
    acc
  end
end

defmodule PipeExample do
  def main(x) do
    Range.new(1, x)
    |> Enum.map(fn x -> x * x end)
    |> Enum.filter(fn x -> rem(x, 2) == 0 end)
  end
end

defmodule Person do
  defstruct name: nil, age: 0, height: 0
end

defmodule Examples do
  def instancePerson do
    joe_info = %Person{name: "Sebby"}
  end
end
