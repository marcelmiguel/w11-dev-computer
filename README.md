# Windows 11 Development Machine Setup

A PowerShell script to automatically install essential development tools on a fresh Windows 11 machine using winget (Windows Package Manager).

## Prerequisites

- Windows 11 (or Windows 10 with winget installed)
- PowerShell 5.1 or higher (included in Windows 11)
- Administrator privileges (recommended)
- Internet connection

## Quick Start

1. **Open PowerShell as Administrator**
   - Right-click on the Start button
   - Select "Windows PowerShell (Admin)" or "Terminal (Admin)"

2. **Run the installation script**
   ```powershell
   .\install.ps1
   ```

3. **Follow the prompts**
   - The script will install essential tools automatically
   - You'll be prompted to install additional recommended tools

## Essential Tools Installed

The script automatically installs these essential development tools:

| Tool | Description | Package ID |
|------|-------------|------------|
| **Google Chrome** | Web browser for development and testing | `Google.Chrome` |
| **WSL** | Windows Subsystem for Linux - run Linux natively | Built-in command |
| **Visual Studio Code** | Powerful code editor with extensions | `Microsoft.VisualStudioCode` |
| **Git** | Version control system | `Git.Git` |
| **Docker Desktop** | Containerization platform | `Docker.DockerDesktop` |
| **WinRAR** | Archive file manager | `RARLab.WinRAR` |

## Recommended Tools (Optional)

The script offers to install these additional development tools:

| Tool | Description | Package ID |
|------|-------------|------------|
| **Node.js** | JavaScript runtime for backend development | `OpenJS.NodeJS` |
| **Python 3** | Python programming language | `Python.Python.3.12` |
| **Windows Terminal** | Modern, feature-rich terminal application | `Microsoft.WindowsTerminal` |
| **PowerShell 7** | Latest version of PowerShell | `Microsoft.PowerShell` |
| **7-Zip** | Open-source archive manager | `7zip.7zip` |
| **Postman** | API development and testing tool | `Postman.Postman` |
| **Notepad++** | Advanced text editor | `Notepad++.Notepad++` |
| **PowerToys** | Microsoft utilities for power users | `Microsoft.PowerToys` |
| **GitHub Desktop** | Git GUI client | `GitHub.GitHubDesktop` |
| **DBeaver** | Universal database management tool | `dbeaver.dbeaver` |

## Other Recommended Tools

Consider installing these tools manually based on your specific needs:

### IDEs and Editors
- **Visual Studio 2022 Community** - Full-featured IDE for .NET development
  ```powershell
  winget install -e --id Microsoft.VisualStudio.2022.Community
  ```
- **JetBrains IntelliJ IDEA** - Java and Kotlin IDE
  ```powershell
  winget install -e --id JetBrains.IntelliJIDEA.Community
  ```
- **PyCharm Community** - Python IDE
  ```powershell
  winget install -e --id JetBrains.PyCharm.Community
  ```

### Development Tools
- **Azure CLI** - Command-line tools for Azure
  ```powershell
  winget install -e --id Microsoft.AzureCLI
  ```
- **AWS CLI** - Amazon Web Services CLI
  ```powershell
  winget install -e --id Amazon.AWSCLI
  ```
- **Terraform** - Infrastructure as Code tool
  ```powershell
  winget install -e --id Hashicorp.Terraform
  ```
- **Kubernetes CLI (kubectl)** - Kubernetes command-line tool
  ```powershell
  winget install -e --id Kubernetes.kubectl
  ```

### Database Tools
- **MySQL Workbench** - MySQL database design tool
  ```powershell
  winget install -e --id Oracle.MySQLWorkbench
  ```
- **PostgreSQL** - PostgreSQL database
  ```powershell
  winget install -e --id PostgreSQL.PostgreSQL
  ```
- **MongoDB Compass** - MongoDB GUI
  ```powershell
  winget install -e --id MongoDB.Compass
  ```

### Communication and Productivity
- **Slack** - Team communication
  ```powershell
  winget install -e --id SlackTechnologies.Slack
  ```
- **Microsoft Teams** - Collaboration platform
  ```powershell
  winget install -e --id Microsoft.Teams
  ```
- **Zoom** - Video conferencing
  ```powershell
  winget install -e --id Zoom.Zoom
  ```

### Utilities
- **Everything** - Fast file search utility
  ```powershell
  winget install -e --id voidtools.Everything
  ```
- **Sysinternals Suite** - Advanced system utilities
  ```powershell
  winget install -e --id Microsoft.Sysinternals
  ```
- **Wireshark** - Network protocol analyzer
  ```powershell
  winget install -e --id WiresharkFoundation.Wireshark
  ```

## Important Notes

### WSL Configuration
After installation and restart, configure WSL 2 as the default version:
```powershell
wsl --set-default-version 2
```

Install your preferred Linux distribution:
```powershell
wsl --install -d Ubuntu
```

### Docker Desktop Requirements
- WSL 2 must be installed and enabled
- Virtualization must be enabled in BIOS
- Restart may be required after WSL installation

### Git Configuration
After installation, configure Git with your details:
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

### VS Code Extensions
Consider installing these popular VS Code extensions:
- GitLens
- Prettier - Code formatter
- ESLint
- Python
- Docker
- Remote - WSL
- Remote - SSH

## Troubleshooting

### Script Execution Policy
If you get an execution policy error, run:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Administrator Rights
Some installations require administrator privileges. Right-click PowerShell and select "Run as Administrator".

### winget Not Found
If winget is not available, install it from the Microsoft Store:
- Search for "App Installer" in Microsoft Store
- Install or update it

### WSL Installation Issues
If WSL installation fails:
1. Enable Windows features manually:
   ```powershell
   dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
   dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
   ```
2. Restart your computer
3. Download and install the WSL 2 kernel update from Microsoft

## Manual Installation

To manually install any tool, use:
```powershell
winget install -e --id <PACKAGE_ID>
```

To search for packages:
```powershell
winget search <TOOL_NAME>
```

## Contributing

Feel free to suggest additional tools or improvements to this setup script!

## License

This project is open source and available under the MIT License.
