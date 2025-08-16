# winget-rancher-desktop-test

- For https://github.com/microsoft/winget-pkgs/issues/281351 .

- Just execute `test.yaml` in GitHub Actions for fork git.

- The log is as follows. Also see https://github.com/linghengqian/winget-rancher-desktop-test/actions/runs/16796545246/job/47568331979 .

```shell
> winget install --id SUSE.RancherDesktop --source winget


   - 
                                                                                                                        
Found Rancher Desktop [SUSE.RancherDesktop] Version 1.19.3
This application is licensed to you by its owner.
Microsoft is not responsible for, nor does it grant any licenses to, third-party packages.
This package requires the following dependencies:
  - Packages
      Microsoft.WSL
(1/1) Found Windows Subsystem for Linux [Microsoft.WSL] Version 2.5.10
This application is licensed to you by its owner.
Microsoft is not responsible for, nor does it grant any licenses to, third-party packages.
Downloading https://github.com/microsoft/WSL/releases/download/2.5.10/wsl.2.5.10.0.x64.msi

   - 
   \ 
   | 
   / 
                                                                                                                        

  ████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  35.0 MB /  234 MB
  ███████████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒   125 MB /  234 MB
  ████████████████████████████▒▒   220 MB /  234 MB
  ██████████████████████████████   234 MB /  234 MB
Successfully verified installer hash
Starting package install...

   - 
   \ 
   | 
   / 
   - 
   \ 
   | 
   / 
   - 
   \ 
   | 
   / 
                                                                                                                        
Installer failed with exit code: 1603
Installer log is available at: C:\Users\runneradmin\AppData\Local\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\DiagOutputDir\WinGet-Microsoft.WSL.2.5.10-2025-08-16-04-57-59.742.log

Error: Process completed with exit code 1.
```
