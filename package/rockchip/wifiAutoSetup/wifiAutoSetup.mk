
#ifeq ($(BR2_PACKAGE_WIFIAUTOSETUP), y)
WIFIAUTOSETUP_SITE = $(TOPDIR)/../external/wifiAutoSetup
WIFIAUTOSETUP_SITE_METHOD = local
WIFIAUTOSETUP_INSTALL_STAGING = YES
WIFIAUTOSETUP_AUTORECONF = YES

define WIFIAUTOSETUP_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE)  CC=$(TARGET_CC) -C $(@D)
endef

define WIFIAUTOSETUP_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/setup $(TARGET_DIR)/usr/bin/
endef

$(eval $(generic-package))
#endif
