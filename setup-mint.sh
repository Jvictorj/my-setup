#!/bin/bash
# setup-mint.sh — Baseado na lista de programas do Windows do usuário
# Testado para Linux Mint (base Ubuntu/Debian). Execute com: bash setup-mint.sh

set -e

echo "=== 1. Atualizando sistema e habilitando Flatpak ==="
sudo apt update && sudo apt upgrade -y
sudo apt install -y flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "=== 2. Instalando pacotes nativos via APT ==="
# Navegadores e comunicação
sudo apt install -y firefox thunderbird

# Desenvolvimento
sudo apt install -y git nodejs npm python3 python3-pip default-jdk

# Utilitários
sudo apt install -y p7zip-full unrar filezilla qbittorrent obs-studio libreoffice

# Emuladores (nativo)
sudo apt install -y pcsx2

# Ferramentas de sistema/monitoramento
sudo apt install -y hwinfo lm-sensors psensor

echo "=== 3. Instalando via Flatpak (apps que precisam de versão mais recente ou não estão no apt) ==="
# Steam (nativo também funciona: sudo apt install steam, mas flatpak é mais isolado)
flatpak install -y flathub com.valvesoftware.Steam

# Heroic Games Launcher (Epic/GOG)
flatpak install -y flathub com.heroicgameslauncher.hgl

# VS Code
flatpak install -y flathub com.visualstudio.code

# Discord, Spotify, Bitwarden, Obsidian
flatpak install -y flathub com.discordapp.Discord
flatpak install -y flathub com.spotify.Client
flatpak install -y flathub com.bitwarden.desktop
flatpak install -y flathub md.obsidian.Obsidian

# LibreWolf (seu navegador)
flatpak install -y flathub io.gitlab.librewolf-community

echo "=== 4. Docker (script oficial) ==="
# Descomente se quiser Docker
# curl -fsSL https://get.docker.com | sh
# sudo usermod -aG docker $USER

echo "=== 5. Ollama (IA local) ==="
curl -fsSL https://ollama.com/install.sh | sh

echo "=== 6. Ryujinx (emulador Switch — fork comunitário) ==="
# O Ryujinx oficial foi descontinuado; este é um instalador comunitário.
# Requer libx11-dev no Mint:
sudo apt install -y libx11-dev
bash -c "$(curl -s https://raw.githubusercontent.com/ryzendew/Pine-jinx-Greem/refs/heads/main/pinejinx.sh)"

echo "=== 7. DaVinci Resolve (manual) ==="
echo "Baixe o .zip oficial em: https://www.blackmagicdesign.com/products/davinciresolve"
echo "Extraia e rode: sudo SKIP_PACKAGE_CHECK=1 ./DaVinci_Resolve_*.run -i"
echo "Depois mova as libs antigas conforme o guia do Mint."

echo "=== 8. Ferramentas de monitoramento GPU (alternativas ao Afterburner/RTSS) ==="
sudo apt install -y mangohud goverlay

echo "=== 9. Finalizado ==="
echo "Reinicie a sessão para aplicar grupos (docker, etc.) e ver os apps no menu."
echo ""
echo "NÃO instalado (precisa de alternativa ou VM):"
echo "  - Microsoft 365/Project/Visio → LibreOffice (instalado) ou OnlyOffice"
echo "  - Affinity → GIMP/Krita/Inkscape (instale via flatpak se quiser)"
echo "  - Visual Studio 2022 → VS Code (instalado) + Rider para .NET"
echo "  - XAMPP → instale LAMP (apache2 + mariadb + php) ou use Docker"
echo "  - Razer Synapse / Elgato Wave Link → OpenRazer / PipeWire + EasyEffects"
echo "  - Jogos com anti-cheat (EA FC, NBA 2K) → verifique protondb.com; muitos não rodam"

#!/bin/bash
# setup-mint.sh — Baseado na lista de programas do Windows do usuário
# Testado para Linux Mint (base Ubuntu/Debian). Execute com: bash setup-mint.sh

set -e

echo "=== 1. Atualizando sistema e habilitando Flatpak ==="
sudo apt update && sudo apt upgrade -y
sudo apt install -y flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "=== 2. Instalando pacotes nativos via APT ==="
# Navegadores e comunicação
sudo apt install -y firefox thunderbird

# Desenvolvimento
sudo apt install -y git nodejs npm python3 python3-pip default-jdk

# Utilitários
sudo apt install -y p7zip-full unrar filezilla qbittorrent obs-studio libreoffice

# Emuladores (nativo)
sudo apt install -y pcsx2

# Ferramentas de sistema/monitoramento
sudo apt install -y hwinfo lm-sensors psensor

echo "=== 3. Instalando via Flatpak (apps que precisam de versão mais recente ou não estão no apt) ==="
# Steam (nativo também funciona: sudo apt install steam, mas flatpak é mais isolado)
flatpak install -y flathub com.valvesoftware.Steam

# Heroic Games Launcher (Epic/GOG)
flatpak install -y flathub com.heroicgameslauncher.hgl

# VS Code
flatpak install -y flathub com.visualstudio.code

# Discord, Spotify, Bitwarden, Obsidian
flatpak install -y flathub com.discordapp.Discord
flatpak install -y flathub com.spotify.Client
flatpak install -y flathub com.bitwarden.desktop
flatpak install -y flathub md.obsidian.Obsidian

# LibreWolf (seu navegador)
flatpak install -y flathub io.gitlab.librewolf-community

echo "=== 4. Docker (script oficial) ==="
# Descomente se quiser Docker
# curl -fsSL https://get.docker.com | sh
# sudo usermod -aG docker $USER

echo "=== 5. Ollama (IA local) ==="
curl -fsSL https://ollama.com/install.sh | sh

echo "=== 6. Ryujinx (emulador Switch — fork comunitário) ==="
# O Ryujinx oficial foi descontinuado; este é um instalador comunitário.
# Requer libx11-dev no Mint:
sudo apt install -y libx11-dev
bash -c "$(curl -s https://raw.githubusercontent.com/ryzendew/Pine-jinx-Greem/refs/heads/main/pinejinx.sh)"

echo "=== 7. DaVinci Resolve (manual) ==="
echo "Baixe o .zip oficial em: https://www.blackmagicdesign.com/products/davinciresolve"
echo "Extraia e rode: sudo SKIP_PACKAGE_CHECK=1 ./DaVinci_Resolve_*.run -i"
echo "Depois mova as libs antigas conforme o guia do Mint."

echo "=== 8. Ferramentas de monitoramento GPU (alternativas ao Afterburner/RTSS) ==="
sudo apt install -y mangohud goverlay

echo "=== 9. Finalizado ==="
echo "Reinicie a sessão para aplicar grupos (docker, etc.) e ver os apps no menu."
echo ""
echo "NÃO instalado (precisa de alternativa ou VM):"
echo "  - Microsoft 365/Project/Visio → LibreOffice (instalado) ou OnlyOffice"
echo "  - Affinity → GIMP/Krita/Inkscape (instale via flatpak se quiser)"
echo "  - Visual Studio 2022 → VS Code (instalado) + Rider para .NET"
echo "  - XAMPP → instale LAMP (apache2 + mariadb + php) ou use Docker"
echo "  - Razer Synapse / Elgato Wave Link → OpenRazer / PipeWire + EasyEffects"
echo "  - Jogos com anti-cheat (EA FC, NBA 2K) → verifique protondb.com; muitos não rodam"
