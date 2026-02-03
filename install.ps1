# Windows 11 Development Machine Setup Script
# This script installs essential development tools using winget

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Windows 11 Dev Machine Setup" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if running as Administrator
$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
if (-not $isAdmin) {
    Write-Host "WARNING: Not running as Administrator. Some installations may fail." -ForegroundColor Yellow
    Write-Host "Please run PowerShell as Administrator for best results." -ForegroundColor Yellow
    Write-Host ""
}

Write-Host "Installing essential development tools..." -ForegroundColor Green
Write-Host ""

# Essential Tools (Requested)
Write-Host "[1/6] Installing Google Chrome..." -ForegroundColor Yellow
winget install -e --id Google.Chrome --accept-package-agreements --accept-source-agreements

Write-Host "[2/6] Installing WSL (Windows Subsystem for Linux)..." -ForegroundColor Yellow
wsl --install

Write-Host "[3/6] Installing Visual Studio Code..." -ForegroundColor Yellow
winget install Microsoft.VisualStudioCode --accept-package-agreements --accept-source-agreements

Write-Host "[4/6] Installing Git..." -ForegroundColor Yellow
winget install -e --id Git.Git --accept-package-agreements --accept-source-agreements

Write-Host "[5/6] Installing Docker Desktop..." -ForegroundColor Yellow
winget install -e --id Docker.DockerDesktop --accept-package-agreements --accept-source-agreements

Write-Host "[6/6] Installing WinRAR..." -ForegroundColor Yellow
winget install -e --id RARLab.WinRAR --accept-package-agreements --accept-source-agreements

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Essential tools installation complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Prompt for additional recommended tools
Write-Host "Would you like to install additional recommended development tools? (Y/N)" -ForegroundColor Cyan
$response = Read-Host
Write-Host ""

if ($response -eq "Y" -or $response -eq "y") {
    Write-Host "Installing recommended development tools..." -ForegroundColor Green
    Write-Host ""
    
    Write-Host "Installing Node.js (JavaScript runtime)..." -ForegroundColor Yellow
    winget install -e --id OpenJS.NodeJS --accept-package-agreements --accept-source-agreements
    
    Write-Host "Installing Python 3..." -ForegroundColor Yellow
    winget install -e --id Python.Python.3.12 --accept-package-agreements --accept-source-agreements
    
    Write-Host "Installing Windows Terminal (modern terminal)..." -ForegroundColor Yellow
    winget install -e --id Microsoft.WindowsTerminal --accept-package-agreements --accept-source-agreements
    
    Write-Host "Installing PowerShell 7 (latest PowerShell)..." -ForegroundColor Yellow
    winget install -e --id Microsoft.PowerShell --accept-package-agreements --accept-source-agreements
    
    Write-Host "Installing 7-Zip (alternative to WinRAR)..." -ForegroundColor Yellow
    winget install -e --id 7zip.7zip --accept-package-agreements --accept-source-agreements
    
    Write-Host "Installing Postman (API testing)..." -ForegroundColor Yellow
    winget install -e --id Postman.Postman --accept-package-agreements --accept-source-agreements
    
    Write-Host "Installing Notepad++ (text editor)..." -ForegroundColor Yellow
    winget install -e --id Notepad++.Notepad++ --accept-package-agreements --accept-source-agreements
    
    Write-Host "Installing Microsoft PowerToys (Windows utilities)..." -ForegroundColor Yellow
    winget install -e --id Microsoft.PowerToys --accept-package-agreements --accept-source-agreements
    
    Write-Host "Installing GitHub Desktop..." -ForegroundColor Yellow
    winget install -e --id GitHub.GitHubDesktop --accept-package-agreements --accept-source-agreements
    
    Write-Host "Installing DBeaver (database tool)..." -ForegroundColor Yellow
    winget install -e --id dbeaver.dbeaver --accept-package-agreements --accept-source-agreements
    
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host "Recommended tools installation complete!" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host ""
}

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Installation Summary" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Essential Tools Installed:" -ForegroundColor Green
Write-Host "  - Google Chrome (Web Browser)" -ForegroundColor White
Write-Host "  - WSL (Windows Subsystem for Linux)" -ForegroundColor White
Write-Host "  - Visual Studio Code (Code Editor)" -ForegroundColor White
Write-Host "  - Git (Version Control)" -ForegroundColor White
Write-Host "  - Docker Desktop (Containerization)" -ForegroundColor White
Write-Host "  - WinRAR (Archive Manager)" -ForegroundColor White
Write-Host ""

if ($response -eq "Y" -or $response -eq "y") {
    Write-Host "Recommended Tools Installed:" -ForegroundColor Green
    Write-Host "  - Node.js (JavaScript Runtime)" -ForegroundColor White
    Write-Host "  - Python 3 (Programming Language)" -ForegroundColor White
    Write-Host "  - Windows Terminal (Modern Terminal)" -ForegroundColor White
    Write-Host "  - PowerShell 7 (Latest PowerShell)" -ForegroundColor White
    Write-Host "  - 7-Zip (Archive Manager)" -ForegroundColor White
    Write-Host "  - Postman (API Testing)" -ForegroundColor White
    Write-Host "  - Notepad++ (Text Editor)" -ForegroundColor White
    Write-Host "  - PowerToys (Windows Utilities)" -ForegroundColor White
    Write-Host "  - GitHub Desktop (Git GUI)" -ForegroundColor White
    Write-Host "  - DBeaver (Database Tool)" -ForegroundColor White
    Write-Host ""
}

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "IMPORTANT NOTES:" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "1. WSL installation requires a system restart" -ForegroundColor White
Write-Host "2. Docker Desktop requires WSL 2 to be enabled" -ForegroundColor White
Write-Host "3. Some applications may require manual configuration" -ForegroundColor White
Write-Host "4. Run 'wsl --set-default-version 2' after restart" -ForegroundColor White
Write-Host ""
Write-Host "Please restart your computer to complete the installation." -ForegroundColor Yellow
Write-Host ""
