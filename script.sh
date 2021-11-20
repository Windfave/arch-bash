#!/bin/sh
echo "This is a script that installs some drivers (make sure you have multilib uncommented [that is default on endeavourOS, not on arch tho])"
echo "oh also make sure you got sudo perms" #i mean you cannot do sudo pacman -S <package> if you did not set up your arch properly
echo "----------------------------------------------------------------------------------------------------------------------------------------"
echo "Following packages will install (if you got the right permission setup) : "
echo "1) nvidia"
echo "2) lib32-nvidia-utils"
echo "3) steam"
echo "4) bonus: neofetch when you open your terminal"
echo "----------------------------------------------------------------------------------"
echo "Proceed with the install? (if your gpu ain't from nvidia then don't)"
select yn in "Yes" "No"; do
  case $yn in
    Yes ) make install; break;;
    No ) exit;;
  esac
done

sudo pacman -S nvidia lib32-nvidia-utils steam -noconfirm
echo "neofetch" > ~/.bashrc
