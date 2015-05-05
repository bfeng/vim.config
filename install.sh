OS_NAME=''
GUI_MODE=0

detect_OS() {
  OS_NAME=`uname -s`
}

check_gui() {
  if [ "$DISPLAY" ]; then
    GUI_MODE=1
  fi
}

patch_fonts() {
  source 'fonts/install.sh'
}

update_submodule() {
  git submodule update --init --recursive
}

update_vim_bundle() {
  echo "Install plugins"
  vim -c "PluginInstall!" -cq
}

link_config() {
  vim="~/.vim"
  echo "Backup existing configurations"
  if [ -e $vim ]; then
    if [ -d $vim ]; then
      mv $vim ${vim}_bak
    fi
    if [ -L $vim ]; then
      rm $vim
    fi
  fi
  echo "Link latest configurations"
  ln -s ~/vim.config ~/.vim
  ls -l ~/.vim
}

detect_OS
check_gui
update_submodule
patch_fonts

#echo $OS_NAME
#echo $GUI_MODE

link_config
update_vim_bundle

echo "Done"
exit 0
