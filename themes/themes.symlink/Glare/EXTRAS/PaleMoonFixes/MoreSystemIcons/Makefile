CONTENT:=install.rdf bootstrap.js icon.png \
	$(wildcard css/*)

all: dist

dist: sysicons.zip
	
sysicons.zip: $(CONTENT)
	7z a -tzip -mx=9 -mfb=128 -mpass=10 sysicons.zip $(CONTENT)
	mv sysicons.zip ../sysicons.xpi


clean:
	rm -f ../sysicons.xpi

.PHONY: all dist clean
