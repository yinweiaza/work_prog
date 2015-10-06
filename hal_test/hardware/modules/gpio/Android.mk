LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_C_PATH := hardware/modules/gpio/include
LOCAL_SRC_FILES : = gpio.c
LOCAL_MODULE := gpio_ts.default
include $(BUILD_SHARD_LmZBRARY)
