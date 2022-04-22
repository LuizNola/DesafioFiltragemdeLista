defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call/1" do
    test "count odds" do
      assert ListFilter.call(["1", "2", "3", "4", "5"]) == 3
      assert ListFilter.call(["1", "banana", "3", "5", "5"]) == 4
      assert ListFilter.call(["6", "2", "4", "4", "2"]) == 0
    end

    test "passing an empty list" do
      assert ListFilter.call([]) == 0
    end
  end
end
