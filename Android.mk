LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),Armor_7_Q)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
