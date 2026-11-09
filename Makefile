TARGET := iphone:clang:latest:11.0
ARCHS := arm64
INSTALL_TARGET_PROCESSES := Zrxipa

include $(THEOS)/makefiles/common.mk

TWEAK_NAME := RYUMA
RYUMA_FILES := Tweak.xm
RYUMA_CFLAGS := -fobjc-arc
RYUMA_FRAMEWORKS := UIKit Foundation

include $(THEOS_MAKE_PATH)/tweak.mk
