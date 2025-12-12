# 🌐 Meu Ambiente de Desenvolvimento --- Setup Completo

Este arquivo documenta meu ambiente de trabalho para reinstalação rápida
em qualquer máquina.\
Deixo salvo no GitHub e usar sempre que formatar ou trocar
de PC.

------------------------------------------------------------------------

## 🖥️ Sistema

-   **Sistema Operacional:** Dual Boot (Windows + Linux Mint)
-   **Shell/Terminal:** PowerShell, Bash (Linux)
-   **Gerenciador de Pacotes:**
    -   **Windows:** Winget\
    -   **Linux:** APT

------------------------------------------------------------------------

## 🔧 Programas e Ferramentas de Trabalho

-   IntelliJ IDEA Ultimate\
-   Docker\
-   Postman\
-   Git\
-   Java (JDK)\
-   DBeaver

------------------------------------------------------------------------

## 🛠️ Utilitários e Programas Gerais

-   7zip\
-   WinRAR\
-   Bitwarden\
-   Discord\
-   Epic Games Launcher\
-   Steam\
-   GoG Galaxy\
-   Firefox\
-   LibreWolf\
-   VS Code\
-   Obsidian\
-   qBittorrent\
-   ShareX\
-   OBS Studio\
-   Thunderbird\
-   Malwarebytes\
-   Docker Desktop\
-   Postman (repetido acima mas mantido aqui como utilitário)

------------------------------------------------------------------------

## 🧩 Extensões de Navegador

-   DuckDuckGo Privacy Essentials\
-   FastForward\
-   Malwarebytes Browser Guard\
-   SponsorBlock\
-   uBlock Origin\
-   Urban Shield

------------------------------------------------------------------------

## ⚙️ Configurações Pessoais

### 🔐 Git

``` bash
git config --global user.name "Seu Nome"
git config --global user.email "seuemail@example.com"
git config --global core.editor "code --wait"
```

------------------------------------------------------------------------

### 🐳 Docker

-   WSL2 habilitado (Windows)\
-   Docker Compose V2 ativado

------------------------------------------------------------------------

## 🔌 Extensões e Plugins do IntelliJ Ultimate

-   Key Promoter X\
-   Rainbow Brackets\
-   Docker Integration

------------------------------------------------------------------------

## 📜 Scripts de Instalação

### 🪟 Windows --- Winget

``` bash
winget install --id Git.Git
winget install --id Docker.DockerDesktop
winget install --id Azul.Zulu.21
winget install --id Python.Python.3.12
winget install --id Postman.Postman
winget install --id DBeaver.DBeaver
winget install --id Microsoft.VisualStudioCode
winget install --id Mozilla.Firefox
winget install --id OBSProject.OBSStudio
winget install --id Bitwarden.Bitwarden
winget install --id 7zip.7zip
winget install --id qBittorrent.qBittorrent
```

(Adicione mais conforme necessário)

------------------------------------------------------------------------

### 🐧 Linux --- APT

``` bash
sudo apt update && sudo apt install -y   git curl docker.io docker-compose   openjdk-21-jdk   obs-studio qbittorrent
```


