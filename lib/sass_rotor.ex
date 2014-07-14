defmodule SassRotor do

  def sass(files) do

    files = Enum.map files, fn(file)->
      {:ok, contents} = Sass.compile_file(file[:path])
      %{file | :contents => contents}
    end

    files
  end

end
