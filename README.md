Book URI:
http://learnyousomeerlang.com/

How to install Erlang in Mac:

`$ brew install erlang`

How to run Erlang shell:

`$ erl`

How to compile Erlang file from inside the shell:

`1> cd("/path/to/script").`

`2> c(file_name).`

Elixir apparently requires Erlang `R16B01` so if you have a previous version installed do the following:

`$ brew tap homebrew/versions`

`$ brew install erlang-r16`

`$ brew uninstall erlang`

`$ brew link erlang-r16`

`$ brew doctor` (optional just to confirm your brew is still healthy)
