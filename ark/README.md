# NOAH' ark

- [Android Studio IDE](https://developer.android.com/studio/)
    - unzip compressed install files
    - move android-studio folder to /opt/android-studio
    - [optional] customize studio.desktop
    - run `./studio`

- [ASDF version manager](https://asdf-vm.com/#/core-manage-asdf)

- [Brave](https://brave.com/)
    - [Bitwarden](https://bitwarden.com/download/)
    - [ColorZilla](https://www.colorzilla.com/)
    - [Dark Reader](https://darkreader.org/)
    - [Fonts Ninja](https://www.fonts.ninja/)
    - [JSON Viewer](https://chrome.google.com/webstore/detail/json-viewer/gbmdgpbipfallnflgajpaliibnhdgobh)
    - [LanguageTool](https://languagetool.org/pt/#plugins)
    - [uBlock Origin](https://ublockorigin.com/)

- [Docker](https://wiki.archlinux.org/title/Docker)

    Run docker without sudo

    ```bash
    sudo usermod -aG docker $USER
    ```

- [Dracula Theme](https://draculatheme.com)

- [Git](https://git-scm.com/downloads)

- [Insomnia](https://insomnia.rest/download)

    There's a AppImage option on GitHub

- [Noto Emoji](https://github.com/googlefonts/noto-emoji)

    AUR package to enable emojis

    ```bash
    yay -S noto-fonts-emoji
    ```

- [OhMyZsh](https://ohmyz.sh/#install)

- Python 3 IDLE GUI fix

    Aux Lib for Tkinter

    ```bash
    yay -S python-pmw
    ```

- Social
    - [Discord](https://discord.com/download)
    - [Slack](https://slack.com/intl/pt-br/downloads/linux)
    - [Telegram](https://telegram.org/apps)
    - [WhatsApp](https://www.whatsapp.com/download/)

- [Timeshift](https://github.com/teejee2008/timeshift#installation)

    AUR package

    ```bash
    yay -S timeshift
    ```

- Utilities
    - [baobab](http://www.marzocca.net/linux/baobab/)
    - [droidcam](https://www.dev47apps.com/)
        - Headers for current linux version are needed e.g linux54-headers
    - [obs-studio](https://obsproject.com/pt-br/download)
    - [simplescreenrecorder](https://www.maartenbaert.be/simplescreenrecorder/)

- [VSCode Insiders](https://code.visualstudio.com/insiders/)

    Create Symbolic link to command `code`

    ```bash
    sudo ln -s $(which code-insiders) /usr/bin/code
    ```