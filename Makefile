SITE=aperspection

build:
	-rm -rf ./$(SITE)/public ./resources/_gen
	cd $(SITE) && HUGO_ENV=production hugo -D -v
	-rm -rf ./docs
	cp -ar $(SITE)/public ./docs
	touch ./docs/.nojekyll
	echo "aperspection.com" > ./docs/CNAME

serve:
	cd $(SITE) && hugo serve -D -v
