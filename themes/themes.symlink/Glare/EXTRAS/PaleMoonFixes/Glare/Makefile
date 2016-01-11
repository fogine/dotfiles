CONTENT:=install.rdf bootstrap.js icon.png \
	$(wildcard css/*)

all: dist

dist: Glare.zip
	
Glare.zip: $(CONTENT)
	7z a -tzip -mx=9 -mfb=128 -mpass=10 Glare.zip $(CONTENT)
	mv Glare.zip ../Glare.xpi


clean:
	rm -f ../Glare.xpi

.PHONY: all dist clean
