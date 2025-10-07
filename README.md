# w11-dev-computer
Script to install a windows 11 dev machine and some extras

### Basic 
``` powershell
wsl --install
wsl --install Ubuntu-24.04
winget install -e --id Google.Chrome
winget install Microsoft.VisualStudioCode
winget install -e --id Git.Git
winget install -e --id RARLab.WinRAR
winget install -e --id Docker.DockerDesktop
winget install -e --id Notepad++.Notepad++
```

### Databases
``` powershell
winget install -e --id MongoDB.Compass.Full
winget install -e --id Microsoft.SQLServerManagementStudio
```

### Languages
``` powershell
winget install -e --id OpenJS.NodeJS.LTS
```
Install legacy Golang 1.19.13 from go.dev./dl/

### Others
``` powershell
winget install -e --id OpenVPNTechnologies.OpenVPNConnect
```

### Games
``` powershell
winget install -e --id Valve.Steam
```

### Steps
- Copy workspaces to local
