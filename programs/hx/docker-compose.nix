{ pkgs, ... }:

{
  home.packages = [
    pkgs.docker-compose-language-service
    pkgs.yaml-language-server
  ];
}
