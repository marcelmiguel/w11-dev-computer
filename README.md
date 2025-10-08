# w11-dev-computer
Guide to install a windows 11 dev machine and some extras

### Basic 
``` powershell
wsl --install
wsl --install Ubuntu
winget install -e --id Google.Chrome --accept-package-agreements --accept-source-agreements
winget install -e --id Git.Git --accept-package-agreements --accept-source-agreements
winget install -e --id Docker.DockerDesktop --accept-package-agreements --accept-source-agreements
winget install -e --id Notepad++.Notepad++ --accept-package-agreements --accept-source-agreements
winget install -e --id Kubernetes.kubectl --accept-package-agreements --accept-source-agreements
winget install -e --id Python.Python.3.12 --accept-package-agreements --accept-source-agreements
winget install -e --id 7zip.7zip --accept-package-agreements --accept-source-agreements
winget install Microsoft.VisualStudioCode --accept-package-agreements --accept-source-agreements
```

### Databases
``` powershell
winget install -e --id MongoDB.Compass.Full --accept-package-agreements --accept-source-agreements
winget install -e --id Microsoft.SQLServerManagementStudio --accept-package-agreements --accept-source-agreements
```

### Languages
``` powershell
winget install -e --id OpenJS.NodeJS.LTS --accept-package-agreements --accept-source-agreements
winget install -e --id ArduinoSA.IDE.stable
```

``` notes
Install legacy Golang 1.19.13 from go.dev./dl/
Install Flutter manually
Install adb (Android)
```

### Others
``` powershell
winget install -e --id OpenVPNTechnologies.OpenVPNConnect --accept-package-agreements --accept-source-agreements
winget install -e --id Oracle.VirtualBox
```

### Games
``` powershell
winget install -e --id Valve.Steam --accept-package-agreements --accept-source-agreements
```

### Configuration
- git config --global user.name "Your Name"
- git config --global user.email "your.email@example.com"
- Copy workspaces to local and clone repos
- Copy .kubectl file
- sshkeys
