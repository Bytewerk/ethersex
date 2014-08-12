TOPDIR ?= ../..
include $(TOPDIR)/.config

ifeq (${IRSND_WEBUI_SUPPORT},y)
INLINE_FILES += services/irsnd_webui/irs.ht
INLINE_FILES += services/irsnd_webui/irs.js
endif

##############################################################################
# generic fluff
include $(TOPDIR)/scripts/rules.mk
