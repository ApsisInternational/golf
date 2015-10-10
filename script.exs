Enum.at(System.argv, 0) 
  |> File.stream!
  |> Stream.map(&String.strip/1)
  |> Stream.filter_map(fn(a) -> String.length(a) > 0 end, fn(a) ->
    String.codepoints(a) 
      |> Stream.map(&String.to_integer/1) 
      |> Stream.map(&(&1+1))
      |> Enum.sum
    end)
  |> Enum.map(&IO.inspect(54-&1))
