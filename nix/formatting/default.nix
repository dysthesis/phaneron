{inputs, ...}: {
  perSystem = {
    pkgs,
    toolchain,
    ...
  }: {
    treefmt = {
      projectRootFile = "flake.nix";
      flakeFormatter = true;
      flakeCheck = true;
      enableDefaultExcludes = true;

      programs = {
        alejandra.enable = true;
        rustfmt = {
          enable = true;
          package = toolchain;
        };
        taplo.enable = true;
        mdformat.enable = true;
      };

      settings = {
        global.excludes = [
          "target/**"
          ".direnv/**"
          "result*"
        ];

        formatter = {
          rustfmt.includes = [
            "crates/**/*.rs"
          ];

          taplo.includes = [
            "*.toml"
            "**/*.toml"
          ];

          alejandra.includes = [
            "*.nix"
            "**/*.nix"
          ];

          mdformat.includes = [
            "*.md"
            "**/*.md"
          ];
        };
      };
    };
  };
}
