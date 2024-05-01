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
