# Elixir Nx Demo

## Installation and start-up instructions


```
git clone https://github.com/rellen/elixir_nx_demo.git
cd elixir_nx_demo
mix deps.get
npm install --prefix assets
iex -S mix phx.server
```

## Running the Nx demo notebook

Once the Phoenix LiveView app is running head to `localhost:4000` in your browser, click on Open, and find the notebook file called `nx_demo1.niex`.

## Niex

This notebook as based on Niex (https://github.com/jonklein/niex).

Below are some extracts from that project's README which are pertinant here.

![An animation of a Niex notebook  in action](https://github.com/jonklein/niex/blob/master/sample_notebooks/demo.gif?raw=true)


### Known issues / future improvements 

- executed code is **not** sandboxed - see section below on arbitrary code execution
- future work - add support for other media types
- notebook format & details are subject to change

### WARNING: arbitrary code execution

This software enables arbitrary code execution **by design** – it is intended for **development and local use only**.  If you
choose to expose any Niex functionality over a network, you are responsible for
implementing the necessary authorization and access controls. 

