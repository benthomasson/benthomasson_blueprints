

.PHONY: all build publish


all: clean build publish

clean:
	rm benthomasson-blueprints-*.tar.gz || true

build:
	ansible-galaxy collection build .

publish:
	ansible-galaxy collection publish benthomasson-blueprints-*.tar.gz --token `cat ~/.ansible/galaxy_token`
