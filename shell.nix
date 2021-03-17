{ sources ? import ./nix/sources.nix,
  pkgs ? (import sources.nixpkgs {})
}:

with pkgs;

let
  inherit (lib) optional optionals;
  erlang = beam.interpreters.erlangR23;
  elixir = beam.packages.erlangR23.elixir_1_11;
in
mkShell {
  buildInputs = [ rebar rebar3 erlang elixir git nodejs yarn ]
     ++ optional stdenv.isLinux inotify-tools
     ++ optionals stdenv.isDarwin (with darwin.apple_sdk.frameworks; [
      CoreFoundation
      CoreServices
  ]);

  shellHook = ''
    export ERL_AFLAGS="-kernel shell_history enabled"
    export ERL_LIBS=""
       
    mkdir .nix-shell
    export NIX_SHELL_DIR=$PWD/.nix-shell

    export MIX_HOME="$NIX_SHELL_DIR/.mix"
    export MIX_ARCHIVES="$MIX_HOME/archives"

  '';
}


