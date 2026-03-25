{ pkgs, ... }:

{
  home.packages = [
    pkgs.copier
    pkgs.jinja-lsp
  ];

  programs.helix.languages.language = [
    {
      name = "jinja";
      language-servers = [ "jinja-lsp" ];
    }
  ];

  programs.helix.languages.language-server.jinja-lsp = {
    command = "jinja-lsp";
  };
}
