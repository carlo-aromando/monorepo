{
  description = "Monorepo test";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }: flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs {
        inherit system;
      };
    in
    {
      devShells.default = pkgs.mkShellNoCC {
        packages = with pkgs; [
          go
          gopls
          golangci-lint
          gotools
          goreleaser
          bazel_7
          gh
        ];
        shellHook = ''
          echo "Welcome to monorepo dev shell"
        '';
      };
    });
}
