# w11-dev-computer
Guide to install a windows 11 dev machine and some extras

### Basic 
``` powershell
wsl --install
wsl --install Ubuntu
winget install Google.Chrome
winget install Git.Git
winget install Docker.DockerDesktop
winget install Notepad++.Notepad++
winget install Kubernetes.kubectl
winget install Python.Python.3.12
winget install 7zip.7zip
winget install Microsoft.VisualStudioCode
winget install Google.PlatformTools
winget install VideoLAN.VLC
```

### Databases
``` powershell
winget install MongoDB.Compass.Full
winget install Microsoft.SQLServerManagementStudio
```

### Languages
``` powershell
winget install OpenJS.NodeJS.LTS
winget install ArduinoSA.IDE.stable
```

Manual install
``` notes
Install legacy Golang 1.19.13 from go.dev./dl/
Install Flutter manually
```

### Others
``` powershell
winget install OpenVPNTechnologies.OpenVPNConnect
winget install Oracle.VirtualBox
wingetr install Derailed.k9s
```

### Games
``` powershell
winget install Valve.Steam
```

### Configuration
- git config --global user.name "Your Name"
- git config --global user.email "your.email@example.com"
- Copy workspaces to local and clone repos
- Copy .kubectl file
- sshkeys + .config file
