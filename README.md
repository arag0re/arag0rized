# arag0reized

### spice up macOS terminal

1. Install Homebrew:
   `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

2. Install iTerm2
   `brew install --cask iterm2`

3. Install git
   `brew install git`

4. Install oh-my-zsh
   ` sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

5. Install fonts
   Download & Install: https://github.com/Falkor/dotfiles/blob/master/fonts/SourceCodePro%2BPowerline%2BAwesome%2BRegular.ttf

6. Install theme
   `git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k`
   Set theme on .zshrc: ZSH_THEME="powerlevel10k/powerlevel10k"
   `sudo nano ~/.zshrc `

7. Install custom Iterm2 colors
   Copy: https://raw.githubusercontent.com/arag0re/arag0rize/iTerm/Sternburg.itermcolors
   Paste contents in a new file somewhere and name it filename.itermcolors

8. Update iterm2 preferences
   Create new profile, make it default, delete default profile
   Set colors to newly created itermcolors files
   Set font to SourceCode+PowerLine+AwesomeRegular

9. Configure Power Level 10K
   Re-launch iterm2 and follow prompts

10.   Enable suggestions
      `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
      Add plugin to .zshrc file: plugins=(zsh-autosuggestions)

11.   Configure Vs Code
      Update terminal.integrated.fontFamily setting to 'SourceCodePro+PowerLine+AwesomeRegular'

12.   Enable quake-style terminal
      Open iterm2 preferences > keys, then configure hotkey to Ctrl + ~ to Show/Hide all windows with a system-wide hotkey
      Open iterm2 preferences > profile > window, set space to all spaces and check hide after opening
      Open system preferences > users & groups > login items, then add iterm. Check hide.
