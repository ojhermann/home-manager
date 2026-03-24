{ pkgs, ... }:

{
  home.packages = [
    pkgs.yamlfmt
  ];

  programs.helix.languages.language = [
    {
      name = "yaml";
      auto-format = true;
      formatter = {
        command = "yamlfmt";
        args = [ "-" ];
      };
    }
  ];
}
