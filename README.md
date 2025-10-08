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

code --install-extension ms-azuretools.vscode-containers
code --install-extension msgithub.vscode-github-actions
code --install-extension ms-vscode-remote.remote-wsl
code --install-extension mhutchie.git-graph
code --install-extension github.copilot
code --install-extension codezombiech.gitignore
code --install-extension heaths.vscode-guid
code --install-extension ms-vscode.makefile-tools
code --install-extension neogrup.neodev
code --install-extension alefragnani.numbered-bookmarks
code --install-extension mohsen1.prettify-json
code --install-extension ms-mssql.mssql
code --install-extension redhat.vscode-xml
code --install-extension golang.go
code --install-extension mechatroner.rainbow-csv
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
winget install Derailed.k9s
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
