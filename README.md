# SassRotor

This is a [Rotor](https://github.com/HashNuke/rotor) to compile SASS files.


### Usage


The `SassRotor` module provides the `sass` rotor. And this is how you call it

```
CoffeeRotor.sass(files)
```

### Example config using the sass rotor

```
# This goes in the place you are configuring Rotor

import Rotor.BasicRotors
import SassRotor

output_path = "priv/static/assets/app.css"
Rotor.watch :stylesheets, ["priv/assets/stylesheets/*.scss"], fn(changed_files, all_files)->
  read_files(all_files)
  |> sass
  |> concat
  |> output_to(output_path)
end
```
