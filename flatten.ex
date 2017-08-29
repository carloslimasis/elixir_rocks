defmodule Flatten do
  def flatten([]), do: []
  def flatten([h|t]) when is_list(h), do: h ++ flatten(t)
end
