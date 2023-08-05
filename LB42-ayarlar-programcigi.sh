#!/bin/bash

zenity --list --title="Resim Seçin" --column="Resim" --icon="/path/to/image.png" "Resim 1" "Resim 2" "Resim 3"


selection=$(zenity --list --title="Program Seçimi" --text="Aşağıdan bir program seçin:" --column="LB42 Ayarlar Programcığı" "Kullanıcı Oluştur" "Kullanıcı Sil" "Parola Değiştir" "Sistemi Güncelle")

case "$selection" in
    "Kullanıcı Oluştur")
        bash kullanici_olustur.sh ;;  
    "Kullanıcı Sil")
        bash kullanici_sil.sh ;;
    "Parola Değiştir")
        bash parola_degistir.sh ;;
    "Sistemi Güncelle")
        bash sistem_guncelleme.sh ;;
    *)
        
esac
