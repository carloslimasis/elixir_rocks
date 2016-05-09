defmodule FlattenTest do
  use ExUnit.Case
  doctest Flatten

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "return flat list when given nested lists" do
     expected = [1 ,2 ,3 , 4, 5]
     actual = Flatten.flatten [[1, 2], [3], [4, 5]]
     assert actual == expected
  end
end