#!/bin/bash


zenity --question --title="Sistem Güncelleme" --text="Sistemi güncellemek istediğinizden emin misiniz?"


if [[ $? -eq 0 ]]; then
   
     xfce4-terminal -e "bash -c 'echo \"Güncelleme İçin lütfen şifrenizi girin:\" && sudo pacman -Syu'"
else
    
    zenity --info --title="Sistem Güncelleme" --text="Güncelleme işlemi iptal edildi."
fi
