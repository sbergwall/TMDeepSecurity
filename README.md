# TMDeepSecurity
PowerShell Module for interacting with Trend Micro Deep Security API


TMDeepSecurity is a Powershell module for interacting with the API for Trend Micro Deep Security Manager.

## Getting started

First you will need to create an API key from Deep Security Manager (DSM). Go to Administration -> User Management -> API Keys and create you API key.

Start with setting your variables that will be used by most, if not all, functions.

```powershell
Set-TmdsConfig -DeepSecurityManager 'https://<YOUR URL>:4119' -APIKey 'YourAPIKey'
```

### Get all computer objects

```powershell
Get-TmdsComputer
```

If you want to see more information about the computer object you can choose which PropertySet you want to use.

```powershell
Get-TmdsComputer -PropertySet computerStatus
```

Get computer object by ID.

```powershell
Get-TmdsComputer -ComputerID 1
```