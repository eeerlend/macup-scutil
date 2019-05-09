# macup-scutil

A [macup](https://github.com/eeerlend/macup) module that sets computer name and host name on with help of `scutil`.

## Installation
Run the following command to add it to your repo

```bash
npm install eeerlend/macup-scutil --save
```

## Configuration
Add your configuration file like this...

```bash
macup_scutil_prefs+=(
  HostName:myhostname # The name associated with hostname and gethostname
  LocalHostName:mylocalhostname # The local (Bonjour) host name.
  ComputerName:mycomputername # The user-friendly name for the system.
)
```
