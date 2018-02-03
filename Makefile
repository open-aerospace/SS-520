all: _site

index.md: README.markdown
	echo "---\nlayout: project-subpage\ntitle: SS-520\ndescription: The SS-520 rocket is a Japanese micro-launcher.\npage: home\n---\n\n" | cat - README.markdown > index.md

_site: index.md
	jekyll build

deploy: _site
	./deploy.sh

clean:
	rm -f index.md
	rm -rf _site
