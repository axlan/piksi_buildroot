################################################################################
#
# zmq_beacon
#
################################################################################

ZMQ_BEACON_VERSION = 0.1
ZMQ_BEACON_SITE = "${BR2_EXTERNAL}/package/zmq_beacon/src"
ZMQ_BEACON_SITE_METHOD = local
ZMQ_BEACON_DEPENDENCIES = czmq

define ZMQ_BEACON_BUILD_CMDS
    $(MAKE) CC=$(TARGET_CC) LD=$(TARGET_LD) -C $(@D) all
endef

define ZMQ_BEACON_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/zmq_beacon $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
