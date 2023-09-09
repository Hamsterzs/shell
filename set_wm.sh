#array=( a b c d )
#for i in "${array[@]}"
#do
#	echo "$i"
#  gsettings set "org.gnome.desktop.wm.keybindings" "switch-to-workspace-$i" "['<Alt>$i']"
#done


declare -a workspaces=("a" "s" "d" "f" "q" "w" "e" "r" "t")
 
# get length of an array
length=${#workspaces[@]}
 
#use C style for loop syntax to read all values and indexes
for (( j=0; j<length; j++ ));
do
  workspace_value=`expr $j + 1`
  gsettings set "org.gnome.desktop.wm.keybindings" "switch-to-workspace-$workspace_value" "['<Alt>${workspaces[$j]}']"
  gsettings set "org.gnome.desktop.wm.keybindings" "move-to-workspace-$workspace_value" "['<Shift><Alt>${workspaces[$j]}']"
done
