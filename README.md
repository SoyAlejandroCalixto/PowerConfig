# Declarative configuration for Windows.

The idea is, after a Windows installation, to have **your whole operating system ready** after running `main.ps1`.

Without spending hours downloading installers from the internet, setting things in configuration or creating dotfiles to reset your previous configuration.

Simply save your PowerConfig configuration, either locally in a directory or in a remote repository, and you will have everything ready to go after execution.

> Warning: This tool is still at a very early stage, so it is not yet as complete as expected in the future. We also welcome contributions to speed up the process.

## How does this work
The directory structure is as follows:
```zsh
PowerConfig
    ├─── main.ps1
    ├─── lib
    └─── system
```
* The `main.ps1` file is the one that **contains the imports** to the rest of the configuration scripts, so in case you create a new one to modularize the configuration, make sure it is imported here.

* The `lib` folder contains the PowerConfig functions definitions, it is the folder in charge of abstracting the configuration in the form of **declarative functions**, such as `SetTheme` to set the light/dark mode, or `WriteFile` to create a dotfile with a certain content in a certain path.

* The `system` folder is **where all the configuration is defined**, such as `packages.ps1` which is in charge of installing all the applications, or `settings.ps1` which is in charge of configuring all the registry and Windows settings.

## Run PowerConfig

* Make sure you have Winget everything in order with:h:
```pwsh
winget upgrade --all
```
* Run the main.ps1:
```pwsh
.\main.ps1
```
