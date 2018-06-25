OS := $(shell uname)
ifeq ($(OS), FreeBSD)
	CODE := $(HOME)/Library/Application Support/Code
endif
ifeq ($(OS), Linux)
	CODE := $(HOME)/.config/Code
endif

install:
	ln -sf $(HOME)/.vscode/settings.json "$(CODE)/User/settings.json"
