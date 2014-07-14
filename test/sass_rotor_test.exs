defmodule SassRotorTest do
  use ExUnit.Case

  import Rotor.BasicRotors
  import SassRotor

  test "should watch for changes and compile to css" do
    output_path = "test/samples/output.css"
    if File.exists?(output_path) do
      File.rm output_path
    end

    Rotor.watch :scss_assets, ["test/samples/*.scss"], fn(changed_files, all_files) ->
      read_files(all_files)
      |> sass
      |> concat
      |> output_to(output_path)
    end
    Rotor.run(:scss_assets)

    {:ok, contents} = File.read output_path
    assert Regex.match?(~r/#main/, contents) && Regex.match?(~r/#navbar/, contents)

    Rotor.stop_watching(:scss_assets)
  end
end
