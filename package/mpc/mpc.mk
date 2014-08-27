################################################################################
#
# mpc
#
################################################################################

MPC_VERSION = 1.0.3
MPC_SITE = $(BR2_GNU_MIRROR)/mpc
MPC_LICENSE = LGPLv3+
MPC_LICENSE_FILES = COPYING.LESSER
MPC_INSTALL_STAGING = YES
MPC_DEPENDENCIES = gmp mpfr
HOST_MPC_DEPENDENCIES = host-gmp host-mpfr

ifeq ($(BR2_TOOLCHAIN_BUILDROOT_STATIC),y)
HOST_MPC_CONF_OPTS = --disable-shared
endif

$(eval $(autotools-package))
$(eval $(host-autotools-package))
