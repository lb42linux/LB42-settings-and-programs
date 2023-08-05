PREFIX  := /usr
SRCDIR  := $(PREFIX)/share/lb42
install:
	mkdir -p $(SRCDIR)
	cp -r kullanici_olustur.sh kullanici_sil.sh parola_degistir.sh sistem_guncelleme.sh $(SRCDIR)
	install -m 755 LB42-ayarlar-programcigi.sh $(DESTDIR) $(SRCDIR)
