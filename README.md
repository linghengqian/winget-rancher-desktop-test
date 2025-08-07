# winget-rancher-desktop-test

- For https://github.com/microsoft/winget-pkgs/issues/281351 .

- Just execute `test.yaml` in GitHub Actions for fork git.

- The log is as follows. Also see https://github.com/linghengqian/winget-rancher-desktop-test/actions/runs/16796545246/job/47568331979 .

```shell
> winget install --id SUSE.RancherDesktop --source winget

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

Successfully verified installer hash
Starting package install...

Successfully installed
Notes: If the virtual machine platform Windows optional feature was enabled, a restart is required for WSL to function properly.
Downloading https://github.com/rancher-sandbox/rancher-desktop/releases/download/v1.19.3/Rancher.Desktop.Setup.1.19.3.msi

Successfully verified installer hash
Starting package install...

Successfully installed
```
