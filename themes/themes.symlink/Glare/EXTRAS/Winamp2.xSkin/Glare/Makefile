CONTENT:=balance.png eqmain.png monoster.png pledit.png readme.txt titlebar.png \
cbuttons.png main.png nums_ex.png pledit.txt shufrep.png viscolor.txt \
eq_ex.png playpaus.png posbar.png text.png volume.png

all: dist

dist: Glare.zip
	
Glare.zip: 
	7z a -tzip -mx=9 -mfb=128 -mpass=10 Glare.zip $(CONTENT)
	mv Glare.zip ../Glare.wsz

clean:
	rm -f ../Glare.wsz

.PHONY: all dist clean
