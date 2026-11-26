# setup-windows.ps1 — Atualizado com os itens da sua pasta
# Execute no PowerShell como Administrador: .\setup-windows.ps1

Write-Host "=== 1. Instalando via Winget (Navegadores, Launchers, etc.) ==="
winget install -e --id Valve.Steam
winget install -e --id EpicGames.EpicGamesLauncher
winget install -e --id GOG.Galaxy
winget install -e --id ElectronicArts.EADesktop
winget install -e --id RockstarGames.Launcher
winget install -e --id Google.Chrome
winget install -e --id LibreWolf.LibreWolf

Write-Host "=== 2. Desenvolvimento ==="
winget install -e --id Microsoft.VisualStudioCode
winget install -e --id Git.Git
winget install -e --id OpenJS.NodeJS.24
winget install -e --id Python.Python.3.13
winget install -e --id EclipseAdoptium.Temurin.25.JDK
winget install -e --id Oracle.JDK.21
winget install -e --id JetBrains.IntelliJIDEA
winget install -e --id Docker.DockerDesktop
winget install -e --id Postman.Postman
winget install -e --id Ollama.Ollama
winget install -e --id DBeaver.DBeaver.Community

Write-Host "=== 3. Criação e Mídia ==="
winget install -e --id OBSProject.OBSStudio
winget install -e --id BlackmagicDesign.DaVinciResolve
winget install -e --id Canva.Affinity
winget install -e --id calibre.calibre

Write-Host "=== 4. Utilitários ==="
winget install -e --id 7zip.7zip
winget install -e --id RARLab.WinRAR
winget install -e --id qBittorrent.qBittorrent
winget install -e --id FileZilla.Client
winget install -e --id REALiX.HWiNFO
winget install -e --id Rem0o.FanControl
winget install -e --id Guru3D.RTSS
winget install -e --id Microsoft.PowerToys
winget install -e --id Famatech.RadminVPN
winget install -e --id Stacher.Stacher

Write-Host "=== 5. Instalando os .exe da sua pasta (Ajuste o caminho se necessário) ==="
# Coloque o caminho da pasta onde estão seus instaladores (ex: D:\Instaladores)
$PastaInstaladores = "D:\Instaladores" 

$InstaladoresSilenciosos = @(
    "OllamaSetup.exe",
    "idea-2026.3.exe",
    "Affinity x64.exe",
    "Docker Desktop Installer.exe",
    "PowerToysSetup-0.102.3001.0-x64.exe",
    "deepseek-harness-0.2.2-rc.1-win-x64.exe",
    "Obsidian-1.8.10.exe",
    "calibre-64bit-9.1.0.msi",
    "Elgato.Wave_Link_3.2.3928_x64.msix",
    "VirtualBox-7.2.2-170484-Win.exe",
    "jdk-21_windows-x64_bin.exe",
    "librewolf-143.0.4-1-windows-x86_64-setup.exe",
    "xampp-windows-x64-8.0.30-0-VS16-installer.exe",
    "Postman-win64-Setup.exe",
    "stacher-7.1.4-setup.exe",
    "dbeaver-ce-25.2.1-x86_64-setup.exe",
    "VSCodeUserSetup-x64-1.104.2.exe",
    "Git-2.51.0-64-bit.exe",
    "qbittorrent_5.3.1_x64_setup.exe",
    "Radmin_VPN_2.0.4899.9.exe",
    "amd-software-adrenalin-edition-26.8.1.exe",
    "node-v24.14.1-x64.msi",
    "python-3.13.17-amd64.exe",
    "FileZilla_3.69.5_win64_sponsored2-setup.exe",
    "RazerSynapseInstaller.exe",
    "AnyDesk.exe",
    "Hermes-Setup.exe",
    "OfficeSetup.exe",
    "OfficeSetup(Microsoft Project).exe",
    "OfficeSetup(Microsoft Visio).exe",
    "winrar-x64-713br.exe",
    "ASUS-DriverHub-Installer.exe",
    "MBSetup.exe"
)

foreach ($app in $InstaladoresSilenciosos) {
    $caminho = Join-Path $PastaInstaladores $app
    if (Test-Path $caminho) {
        Write-Host "Instalando $app..." -ForegroundColor Cyan
        # A maioria dos instaladores aceita /S ou /quiet, mas alguns (como MSI) precisam de msiexec
        if ($app -like "*.msi") {
            Start-Process msiexec.exe -ArgumentList "/i `"$caminho`" /quiet /norestart" -Wait
        } elseif ($app -like "*.msix") {
            Add-AppxPackage -Path $caminho
        } else {
            # Tenta rodar silenciosamente. Se o app não suportar /S ou /quiet, ele abrirá a tela padrão.
            Start-Process -FilePath $caminho -ArgumentList "/S", "/quiet", "/silent" -Wait -ErrorAction SilentlyContinue
        }
    } else {
        Write-Host "Aviso: $app não encontrado na pasta $PastaInstaladores" -ForegroundColor Yellow
    }
}

Write-Host "=== Finalizado ==="


# setup-windows.ps1 — Reinstala seus programas após formatar
# Execute no PowerShell como Administrador: .\setup-windows.ps1

Write-Host "=== Instalando launchers de jogos ==="
winget install -e --id Valve.Steam
winget install -e --id EpicGames.EpicGamesLauncher
winget install -e --id GOG.Galaxy
winget install -e --id ElectronicArts.EADesktop
winget install -e --id RockstarGames.Launcher

Write-Host "=== Navegadores ==="
winget install -e --id Google.Chrome
winget install -e --id LibreWolf.LibreWolf

Write-Host "=== Desenvolvimento ==="
winget install -e --id Microsoft.VisualStudioCode
winget install -e --id Git.Git
winget install -e --id OpenJS.NodeJS.24
winget install -e --id Python.Python.3.13
winget install -e --id EclipseAdoptium.Temurin.25.JDK
winget install -e --id Oracle.JDK.21
winget install -e --id JetBrains.IntelliJIDEA
winget install -e --id Docker.DockerDesktop
winget install -e --id Postman.Postman
winget install -e --id Ollama.Ollama

Write-Host "=== Criação e mídia ==="
winget install -e --id OBSProject.OBSStudio
winget install -e --id BlackmagicDesign.DaVinciResolve
winget install -e --id Canva.Affinity
winget install -e --id calibre.calibre

Write-Host "=== Utilitários ==="
winget install -e --id 7zip.7zip
winget install -e --id RARLab.WinRAR
winget install -e --id qBittorrent.qBittorrent
winget install -e --id FileZilla.Client
winget install -e --id REALiX.HWiNFO
winget install -e --id Rem0o.FanControl
winget install -e --id Guru3D.RTSS
winget install -e --id Microsoft.PowerToys
winget install -e --id Famatech.RadminVPN

Write-Host "=== Emuladores ==="
winget install -e --id PCSX2Team.PCSX2

Write-Host "=== Finalizado ==="
Write-Host "Alguns apps podem pedir confirmação ou não ter instalador silencioso."
Write-Host "Verifique manualmente: Razer Synapse, DELUX Gaming Driver, MSI Afterburner (pode falhar via winget)."
