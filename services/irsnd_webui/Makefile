TOPDIR ?= ../..
include $(TOPDIR)/.config

ifeq (${IRSND_WEBUI_SUPPORT},y)
INLINE_FILES += services/irsnd_webui/irs.ht
INLINE_FILES += services/irsnd_webui/irs.js
INLINE_FILES += services/irsnd_webui/ircode
endif

services/irsnd_webui/%: services/irsnd_webui/%.m4
	$(M4) $< | sed -e ':a;N;$!ba;s/[\t\n]\+/ /g' > $@

##############################################################################
# generic fluff
include $(TOPDIR)/scripts/rules.mk
