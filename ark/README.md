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

- [Logind](https://www.man7.org/linux/man-pages/man5/logind.conf.5.html)

  Disable lid close sleep behaviour

  ```bash
  echo -e "
  HandleLidSwitch=ignore
  HandleLidSwitchDocked=ignore" >> /etc/systemd/logind.conf
  ```

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

- Automate setup for my stream apps audio sources

  ```bash
  mkdir -p ~/.config/pulse/
  ln -s ~/ark/default.pa ~/.config/pulse/default.pa
  ```

  > to unload modules use the owner module ID, use `pactl list sinks` to check

  Sources:
  - [OBS Forum: Include/Exclude audio sources using pulseaudio](https://obsproject.com/forum/resources/include-exclude-audio-sources-using-pulseaudio-linux.95/)
  - [PulseAudioDocs: Modules](https://www.freedesktop.org/wiki/Software/PulseAudio/Documentation/User/Modules/)
  - [ArchWiki: PulseAudio examples](https://wiki.archlinux.org/title/PulseAudio/Examples)

- [Micro Editor](https://micro-editor.github.io/)
  - plugins:
    - `filemanager`: Equivalente ao explorador
    - `quoter`: envolve seleção de texto com parêntesis, aspas, ...
    - `misspell`: verifica ortografia
    - `manipulator`: manipulação de texto com maiúsculas, minúsculas, primeira maiúscula
    - `fzf`: buscador de arquivos
      - TODO: respeitar .gitignore <https://github.com/junegunn/fzf/issues/1625>

- [AstroNvim](https://astronvim.com/)
  ```bash
  # TODO: avoid clone, conflicts with .cfg
  git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
  # apply `astro_diff.patch` to `~/.config/nvim`
  nvim
  ```
  - on nvim command use:
  1. `:PackerInstall` to install `vim-prisma`
  1. `:Mason` select using `i` to install the following:
    ✓ eslint-lsp
    ✓ eslint_d
    ✓ prettier
    ✓ prisma-language-server
    ✓ tailwindcss-language-server
    ✓ typescript-language-server
  1. `:LspInstall tailwindcss`

- Git SSH config

```bash
ssh-keygen -t ed25519 -C "thlmenezes@pm.me"
# set passphrase for extra security
cat ~/.ssh/id_ed25519.pub
# copy output and add ssh key to github settings
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
# update default ssh configs
micro ~/.ssh/config
# after all the steps, it should work
ssh -T git@github.com
# and remember to update remote urls to ssh
# git remote set-url origin git@github.com:<user>/<repo>.git
```

```txt
# ~/.ssh/config
Host github.com
Hostname ssh.github.com
Port 443
User git
```

Read more @ [GithubDocs: SSH](https://docs.github.com/pt/authentication/connecting-to-github-with-ssh) e [Troubleshooting](https://docs.github.com/pt/authentication/troubleshooting-ssh)
