.PHONY: run/convert

run/convert:
	./kepubify-darwin-arm64 --css custom.css --smarten-punctuation --fullscreen-reading-fixes --hyphenate -o converted book/*.epub
