{
  inputs.flakelight.url = "github:nix-community/flakelight";
  outputs = {flakelight, ...}:
    flakelight ./. {
      devShell.packages = pkgs: [
        pkgs.go
        pkgs.pre-commit
        pkgs.go-tools
        pkgs.govulncheck
        pkgs.gosec
        ];
    };
}
