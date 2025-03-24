{ pkgs, ... }:

let
  USER = "raf";
in
{
  homebrew = {
    casks = [
      "docker"
      "google-chrome"
      "intellij-idea"
      "microsoft-teams"
      "webstorm"
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
