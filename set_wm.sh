declare -a workspaces=("a" "s" "d" "f" "q" "w" "e" "r" "t" "z" "x" "c" "v")
 
# get length of an array
length=${#workspaces[@]}
 
#use C style for loop syntax to read all values and indexes
for (( j=0; j<length; j++ ));
do
  workspace_value=`expr $j + 1`
  gsettings set "org.gnome.desktop.wm.keybindings" "switch-to-workspace-$workspace_value" "['<Alt>${workspaces[$j]}']"
  gsettings set "org.gnome.desktop.wm.keybindings" "move-to-workspace-$workspace_value" "['<Shift><Alt>${workspaces[$j]}']"
done
