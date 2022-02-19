# S-Editor Server
Script to run Smart Editor offline server locally on your device.

## Install on Linux (Ubuntu & Debian)
### 1. Updating
  - ` sudo apt-get update`
  - ` sudo apt-get upgrade -y`

### 2. Installing the requirements
  - ` sudo apt-get install curl unzip wget git screen python -y `

### 3. Installing CLI
  - ` sudo curl -fsSl @ | bash `

## install on Android [Termux](https://termux.com)
### 1. Updating
  - ` pkg update`
  - ` pkg upgrade -y`

### 2. Installing the requirements
  - ` pkg install curl unzip wget git screen python -y `

### 3. Installing CLI
  - ` curl -fsSl @ | bash `

## Usage

```
 s-editor <[args]> <[args2]>
  
  check-cli        check the cli
  check-project    check the project
  run <[-p port]>  run the server default port is 8080
```

## Uninstall
  - ` curl -fsSl @ | bash `