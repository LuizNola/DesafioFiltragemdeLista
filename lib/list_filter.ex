defmodule ListFilter do
  require Integer

  def call(list) do
    list_filter(list)
  end

  defp list_filter(list) do
    result =
      Enum.map(list, fn x ->
        if(Integer.parse(x) != :error) do
          {v, _} = Integer.parse(x)
          v
        end
      end)

    is_odd(result)
  end

  defp is_odd(list) do
    filter_list = Enum.filter(list, &is_number(&1))

    result =
      Enum.map(filter_list, fn r ->
        if(Integer.is_odd(r)) do
          r
        end
      end)

    Enum.count(Enum.filter(result, &is_number(&1)))
  end
end
