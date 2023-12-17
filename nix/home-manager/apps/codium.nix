{ config, pkgs, ... }:

{
	programs.vscode = {
		enable = true;
        package = pkgs.vscodium;
        extensions = with pkgs.vscode-extensions; [
            dracula-theme.theme-dracula
            esbenp.prettier-vscode
            pkief.material-icon-theme
            bbenoist.nix
        ];
        userSettings = {
            editor = {
                guides.bracketPairs = true;
                bracketPairColorization.enabled = true;
                lineHeight = 20;
                fontFamily = "FiraCode Nerd Font Ret";
                fontLigatures = true;
                fontSize = 16;
                defaultFormatter = "esbenp.prettier-vscode";
                rulers = [ 120 ];
                accessibilitySupport = "off";
                formatOnPaste = true;
            };
            workbench = {
                colorTheme = "Dracula Soft";
                iconTheme = "material-icon-theme";
                editor = {
                    highlightModifiedTabs = true;
                };
                tree.indent = 20;
            };
            exclude = {
                "**/node_modules" = true;
            };
            search = {
                location = "panel";
            };
            "workbench.sideBar.location" = "right";
        };
	};
}

