#!/bin/bash

DATA=$(zenity --forms --title="Kullanıcı Sil" \
              --text="" \
              --add-password="Çalışan hesaptaki şifreyi girin : ")

currp=$(awk -F'|' '{print $1}' <<< "$DATA")

if echo "$currp" | sudo -S echo "" >/dev/null 2>&1; then
    DATA=$(zenity --forms --title="Kullanıcı Sil" --text="" --add-entry="Silinicek Kullanıcının Adını girin : ")

    
    if [ -n "$DATA" ]; then
        sudo userdel -r "$DATA"
        zenity --info --title="Kullanıcı Sil" --text="İşlem Başarılı"
        bash ./LB42-ayarlar-programcigi.sh 
    else
        zenity --error --title="Hata" --text="Bir sorun oluştu böyle bir hesap olmayabilir."
        bash ./LB42-ayarlar-programcigi.sh 
    fi
else
    zenity --error --title="Hata" --text="Şifre Yalnış veya işlem başarısız."
    bash ./LB42-ayarlar-programcigi.sh 
fi
