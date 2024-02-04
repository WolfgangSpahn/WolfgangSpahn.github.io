IMAGES:=pexels-khaled-reese-702139.jpg EmptyTemplate.png FilledTemplate.png

INVIMAGES:=$(patsubst %.png,%.inv.png,$(IMAGES))
GRAYINVIMAGES:=$(patsubst %.png,%.gray.png,$(IMAGES))

help:
	@egrep '^(.+)\:\ ##\ (.+)' ${MAKEFILE_LIST} | column -t -c 2 -s ':#'

images: ## create converted images
images: $(GRAYINVIMAGES)

clean: ## clean up
	rm -f *.inv.png *.inv.gray.png

%.inv.png: %.png
	convert  $< -channel RGB -negate $@


%.gray.png: %.inv.png
	magick $< -resize 1000000@ -fill white -colorize 5% $@
