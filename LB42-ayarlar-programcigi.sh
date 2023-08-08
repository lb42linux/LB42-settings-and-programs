#!/bin/bash

zenity --list --title="Resim Seçin" --column="Resim" --icon="/path/to/image.png" "Resim 1" "Resim 2" "Resim 3"


selection=$(zenity --list --title="Program Seçimi" --text="Aşağıdan bir program seçin:" --column="LB42 Ayarlar Programcığı" "Kullanıcı Oluştur" "Kullanıcı Sil" "Parola Değiştir" "Sistemi Güncelle" "Pencere Opaklığını Ayarla" "XFCE4 Panel Ayarları" "Diğer Ayarlar (XFCE4 Settings)")

case "$selection" in
    "Kullanıcı Oluştur")
        bash kullanici_olustur.sh ;;  
    "Kullanıcı Sil")
        bash kullanici_sil.sh ;;
    "Parola Değiştir")
        bash parola_degistir.sh ;;
    "Sistemi Güncelle")
        bash sistem_guncelleme.sh ;;
    "Pencere Opaklığını Ayarla")
        bash opaklik_ayarla.sh ;;
    "XFCE4 Panel Ayarları")    
        xfce4-panel --preferences ;;
    "Diğer Ayarlar (XFCE4 Settings)") 
        xfce4-settings-manager ;;
    *)
        
esac
