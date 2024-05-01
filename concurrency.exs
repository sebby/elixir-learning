defmodule Examples do
  def main do
    # => #Function<erl_eval.20.80484245>
    f = fn -> 2 * 2 end
    # => #PID<0.40.0>
    spawn(f)
  end

  def spawn do
    pid = spawn(Geometry, :area_loop, [])
    send(pid, {:rectangle, 2, 3})
  end

  def agent do
    {:ok, my_agent} = Agent.start_link(fn -> ["red", "green"] end)
    Agent.get(my_agent, fn colors -> colors end)
    Agent.update(my_agent, fn colors -> ["blue" | colors] end)
    IO.puts("ajout d'une couleur")
    Agent.get(my_agent, fn colors -> colors end)
  end
end

defmodule Geometry do
  def area_loop do
    receive do
      {:rectangle, w, h} ->
        IO.puts("Area = #{w * h}")
        area_loop()

      {:circle, r} ->
        IO.puts("Area = #{3.14 * r * r}")
        area_loop()
    end
  end
end
