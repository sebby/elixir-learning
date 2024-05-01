defmodule Examples do
  def main do
    # => #Function<erl_eval.20.80484245>
    f = fn -> 2 * 2 end
    # => #PID<0.40.0>
    spawn(f)
  end
end
