include $(TOPDIR)/rules.mk

PKG_NAME:=gluon-config-mode-contact-info-anonymous-hint
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(TOPDIR)/../package/gluon.mk

PKG_CONFIG_DEPENDS += $(GLUON_I18N_CONFIG)

define Package/gluon-config-mode-contact-info-anonymous-hint
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=Allows the user to provide contact information to be distributed in the mesh
  DEPENDS:=gluon-config-mode-core-virtual +gluon-node-info
endef

define Package/gluon-config-mode-contact-info-anonymous-hint/description
  Allows the user to provide contact information to be distributed in the mesh.
  Can be made obligatory in site.conf. If made obligatory, it shows a hint, that
  you can enter a space to run the node anonymously
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
	$(call GluonBuildI18N,gluon-config-mode-contact-info-anonymous-hint,i18n)
	$(call GluonSrcDiet,./luasrc,$(PKG_BUILD_DIR)/luadest/)
endef

define Package/gluon-config-mode-contact-info-anonymous-hint/install
	$(CP) $(PKG_BUILD_DIR)/luadest/* $(1)/
	$(call GluonInstallI18N,gluon-config-mode-contact-info-anonymous-hint,$(1))
endef

define Package/gluon-config-mode-contact-info-anonymous-hint/postinst
#!/bin/sh
$(call GluonCheckSite,check_site.lua)
endef

$(eval $(call BuildPackage,gluon-config-mode-contact-info-anonymous-hint))
