# Better Windows Terminal

Are you bored of using the default windows terminal? Have no worries, we have got your back!\
Special thanks to [this](https://dev.to/anupa/beautify-your-windows-terminal-1la8) post by Anup Aglawe! If this repo helps you, you can star it so that it can help more people!

### Installing the new terminal

#### Using Microsoft Store

Open Microsoft Store and search for "Windows Terminal". In this way, your terminal will also auto-update without worrying

#### Using Chocolatey

You can also use [Chocolatey](https://docs.chocolatey.org/en-us/choco/setup) to install the new terminal.

* Run `Get-ExecutionPolicy` in Powershell. If it returns `Restricted`, then run `Set-ExecutionPolicy AllSigned` or `Set-ExecutionPolicy Bypass -Scope Process`.
* Now run: 
    ```powershell
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager] ::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    ```
* This will configure chocolatey on your system. Now you can install more packages using it. We will use `choco install microsoft-windows-terminal -y` to install the new terminal. The `-y` flag is to skip all confirmation, you can remove this flag for a custom installation.

#### Using winget

People who are using [winget](https://github.com/microsoft/winget-cli) can install the new terminal by running this command:
```powershell
winget install --id=Microsoft.WindowsTerminal -e
```

#### Using [scoop](https://github.com/LeonardSSH/coc-discord-rpc/wiki/install)

You can also use the famous package manager [scoop](https://scoop.sh/) by running this command:
```powershell
scoop bucket add extras
scoop install windows-terminal
```

Other methods can be found [here](https://github.com/microsoft/terminal#installing-and-running-windows-terminal).

### Configuring your terminal

You can modify many assets of your terminal just by editing the `settings.json` file. Launch the terminal and then go to settings and hit "Open JSON file" located at the bottom right section. This will open `settings.json` in your default IDE.

* Under profiles list, update the `defaults` profile to the following:

    ```json
    "defaults": 
    {
        "acrylicOpacity": 0.90000000000000002,    
        "backgroundImage": "path_to_an_image",     
        "backgroundImageOpacity": 0.25,            
        "colorScheme": "Blue Matrix",  
        "experimental.retroTerminalEffect": false, 
        "fontFace": "Cascadia Code PL",           
        "fontSize": 11,                       
        "hidden": false,                  
        "useAcrylic": true     
    },
    ```
    
    > Tip: You can even use gifs as background image.

* Since "Blue Matrix" theme is not pre-installed, we will be adding it ourselves. Scroll down in `settings.json` to find a `schemes` list and   update it like this:

    ```json
    "schemes": 
    [
        {
            "background": "#1D2342",
            "black": "#101116",
            "blue": "#00B0FF",
            "brightBlack": "#686868",
            "brightBlue": "#6871FF",
            "brightCyan": "#60FDFF",
            "brightGreen": "#5FFA68",
            "brightPurple": "#D682EC",
            "brightRed": "#FF6E67",
            "brightWhite": "#FFFFFF",
            "brightYellow": "#FFFC67",
            "cursorColor": "#FFFFFF",
            "cyan": "#76C1FF",
            "foreground": "#B8FFE1",
            "green": "#00FF9C",
            "name": "Blue Matrix",
            "purple": "#D57BFF",
            "red": "#FF5680",
            "selectionBackground": "#B0DCE2",
            "white": "#C7C7C7",
            "yellow": "#FFFC58"
        },
        {}
    ]
    ```

> NOTE: Since Cascadia Code PL might not be readily installed, install it from [here](https://github.com/microsoft/cascadia-code/releases).

More themes can be found here: https://atomcorp.github.io/themes/

### Linux-like Terminal Setup

* Install [Git](https://git-scm.com/downloads) for windows.

* Install `Post-git` and `Oh-my-posh` by running these scripts in Powershell:
    ```powershell
    Install-Module posh-git -Scope CurrentUser
    Install-Module oh-my-posh -Scope CurrentUser
    ```

* Open your Powershell profile file with `nvim $PROFILE` or the editor of your choice. If you don't already have a profile file then create one using this command:

    ```powershell
    if (!(Test-Path -Path $PROFILE)) { New-Item -ItemType File -Path PROFILE -Force }
    ```

* Now add the following to your profile file:
    ```powershell
    Import-Module posh-git
    Import-Module oh-my-posh
    Set-PoshPrompt -Theme spaceship
    ```

    More themes can be found [here](https://github.com/JanDeDobbeleer/oh-my-posh#themes).

* If you get a module not found error then add the following code at the top of your profile file:
    ```powershell
    $env:PSModulePath = $env:PSModulePath + "$([System.IO.Path]::PathSeparator)C:\Users\xxxx\Documents\WindowsPowerShell\Modules"
    ```

#### Autocompletion

Autocompletion is one of the best features of shells. We can add similar functionality to Powershell:

```powershell
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
```

![image](https://user-images.githubusercontent.com/65854695/126736657-29ed91dc-0c9b-495a-80d5-0b8ed490b62d.png)

Just typing `nv` and pressing <kbd>↑</kbd> showed  previous `nvim $profile` history and hitting <kbd>Space</kbd> executes that command.

![image](https://user-images.githubusercontent.com/65854695/126737230-7c522c2a-9d3e-44f4-8f36-e91be558b63a.png)
 
 Hitting <kbd>Tab</kbd> after typing `emacs` showed all available options.

### Running Git in a new profile

The setup is very easy, you just need to install [Git](https://git-scm.com/downloads) and then add this in your `settings.json` profiles dict:

```json
{
    "commandline": "C:/Program Files/Git/bin/bash.exe --login",
    "guid": "{00000000-0000-0000-ba54-000000000002}",
    "hidden": false,
    "icon": "%PROGRAMFILES%/Git/mingw64/share/git/git-for-windows.ico",
    "name": "Git",
    "startingDirectory": null
}
```

If you can't figure it out in the `settings.json` here are the interactive settings:

![image](https://user-images.githubusercontent.com/65854695/126441159-6276f99e-c0ae-499a-b50e-179c5ec3dea4.png)

### Adding ascii arts to your terminal

You can add your own ascii art or you can use my configs which can be found [here](Microsoft.PowerShell_profile.ps1) in this repo itself.

Your terminal might look like this now:

![Powershell Preview](https://i.imgur.com/R1tTMXo.png)

### Installing neofetch

You can easily install neofetch on windows using scoop like this:

* Install scoop if you haven't already by executing this command:
    ```powershell
    Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
    ```

* Now run `scoop help` to check if scoop is installed correctly.
* Before installing neofetch, you need Git installed using scoop. Run `scoop install git` for that.
* After this you can run `scoop install neofetch`.

If everything goes well, then executing `neofetch` should output something like this:

![Neofetch Preview](https://i.imgur.com/7exWfFO.png)

### Credits

Thanks to all the blogs referred here:

https://www.neowin.net/news/how-to-install-and-use-neofetch-on-desktop-and-mobile/
https://dev.to/anupa/beautify-your-windows-terminal-1la8
https://github.com/microsoft/terminal
https://github.com/JanDeDobbeleer/oh-my-posh
https://github.com/dahlbyk/posh-git
https://github.com/EvotecIT/PSWriteColor
https://github.com/atomcorp/themes

You can open an issue on the repo if you face one or make a pull request if you would like to contribute.

##### Background Image:

<img src = "background.jpg">


![yay](https://cdn.discordapp.com/emojis/798795579819294740.gif?v=1)
![uwu terminal](https://i.imgur.com/yqiAJn0.png)
