Enum.at(System.argv, 0) 
  |> File.stream!
  |> Stream.map(fn {i,a} ->
    54 - String.codepoints(a) 
      |> Stream.map(&String.to_integer/1) 
      |> Stream.map(&(&1+1))
      |> Enum.sum
    end) 
  |> Enum.take(1)