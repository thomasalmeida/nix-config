{ config, pkgs, lib, ... }:

let
  # ID e URL do XPI do 1Password (última versão)
  onepassword-id  = "1Password@agilebits.com";
  onepassword-url = "https://addons.mozilla.org/firefox/downloads/latest/1password-x-in-your-browser/latest.xpi";
in
{
  programs.firefox = {
    enable = true;

    preferences = {
      "ui.systemUsesDarkTheme"                              = 1;  # :contentReference[oaicite:0]{index=0}
      "layout.css.prefers-color-scheme.content-override"    = 0;  # Dark=0 :contentReference[oaicite:1]{index=1}
      "browser.search.defaultenginename"                    = "Google";                    # :contentReference[oaicite:2]{index=2}
      "browser.search.selectedEngine"                       = "Google";                    # :contentReference[oaicite:3]{index=3}
      "keyword.URL"                                         = "https://www.google.com/search?q=%s";  # :contentReference[oaicite:4]{index=4}
      "browser.newtab.url"                                  = "about:blank";               # :contentReference[oaicite:5]{index=5}
      "browser.startup.page"                                = 3;  # 3 = “Mostrar janelas e abas da última sessão” :contentReference[oaicite:6]{index=6}
      "browser.toolbars.keyboard_navigation"                = false;                      # :contentReference[oaicite:7]{index=7}
    };

    policies = {
      ExtensionSettings = {
        "*" = {
          installation_mode = "blocked";
        };
        "${onepassword-id}" = {
          installation_mode = "allowed";
          install_url       = onepassword-url;
        };
      };  # :contentReference[oaicite:8]{index=8}
    };
  };

  home.file = {
    ".mozilla/firefox/distribution/policies.json".text = builtins.toJSON {
      policies = config.programs.firefox.policies;
    };
  };
}
