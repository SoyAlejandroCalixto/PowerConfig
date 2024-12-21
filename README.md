# Declarative configuration for Windows.

The idea is, after a Windows installation, to have **your whole operating system ready** after running `main.ps1`.

Without spending hours downloading installers from the internet, setting things in configuration or creating dotfiles to reset your previous configuration.

Simply save your PowerConfig configuration, either locally in a directory or in a remote repository, and you will have everything ready to go after execution.

> Warning: This tool is still at a very early stage, so it is not yet as complete as expected in the future. We also welcome contributions to speed up the process.

## How does this work
The directory structure is as follows:
```zsh
PowerConfig
    ├─── lib
    ├─── main.ps1
```
* The `lib` folder contains the PowerConfig functions definitions, it is the folder in charge of abstracting the configuration in the form of **declarative functions**, such as `SetTheme` to set the light/dark mode, or `WriteFile` to create a dotfile with a certain content in a certain path.

* The `main.ps1` is the main file, here you will place all your configuration, or you will import the different configuration files you create, in case you decide to modularize your configuration.

## Run PowerConfig

* Install the previous dependencies:
```pwsh
winget install Git.Git gerardog.gsudo
```
* Run the main.ps1 **without administrador**:
```pwsh
.\main.ps1
```
