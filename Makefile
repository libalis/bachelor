SUBDIRS := $(wildcard */.)

all: $(SUBDIRS)
clean: $(SUBDIRS)
check: $(SUBDIRS)

$(SUBDIRS):
	@if [ -f "$@/Makefile" ]; then \
		$(MAKE) -C $@ $(MAKECMDGOALS); \
	fi

.PHONY: all clean check $(SUBDIRS)
