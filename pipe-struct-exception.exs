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

  def exception do
    try do
      raise "some error"
    rescue
      # x in [RuntimeError] ->
      #   x.message
      RuntimeError -> "rescued a  runtime err"
      _error -> " this will rescue any error"
    end
  end
end

defmodule Examples.User do
  @derive {Inspect, only: [:name]}
  defstruct name: "Sebby", roles: []
end
