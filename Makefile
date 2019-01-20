index.html: samalws.com.html
	mv samalws.com.html index.html
%.html:
	cat src/template1.html > $@
	echo "<h1>$*</h1>" >> $@
	cat src/$@ >> $@
	cat src/template2.html >> $@
clean:
	find -maxdepth 1 -name "*.html" -delete
