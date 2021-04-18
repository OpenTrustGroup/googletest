#
# Copyright (C) 2016 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Note that the platform modules are defined in the Android.bp. This file is
# used for the NDK.

# If we're being invoked from ndk-build, we'll have NDK_ROOT defined.
ifdef NDK_ROOT

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := googletest_shared
LOCAL_SRC_FILES := src/gtest-all.cc
LOCAL_C_INCLUDES := $(LOCAL_PATH)/src $(LOCAL_PATH)/include
LOCAL_CFLAGS := -DGTEST_CREATE_SHARED_LIBRARY
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
include $(BUILD_SHARED_LIBRARY)

endif
