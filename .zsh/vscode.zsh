# copy and commit keybindings and settings files to .dotfiles repo
vscode_dotfiles() {
  cp ~/Library/Application\ Support/Code/User/keybindings.json ~/.vscode/copy.keybindings.json
  cp ~/Library/Application\ Support/Code/User/settings.json ~/.vscode/copy.settings.json
  
  dotfiles add ~/.vscode/copy*
  dotfiles commit -m 'new copies of vscode json files'
  dotfiles push origin main
}
