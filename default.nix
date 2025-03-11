{ pkgs, ... }:

let
  USER = "raf";
in
{
  homebrew = {
    casks = [
      "intellij-idea"
      "webstorm"
      "microsoft-teams"
      "microsoft-outlook"
      "docker"
    ];
    brews = [
    ];
  };

  home-manager.users.${USER}.home.packages =
    with pkgs;
    [
      awscli2
      jira-cli-go
    ]
    ++ (if pkgs.stdenv.isDarwin then [ ] else [ ]);
}
