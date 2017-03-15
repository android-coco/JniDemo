# Copyright (C) 2009 The Android Open Source Project
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
LOCAL_PATH := $(call my-dir) #设置工作目录，而my-dir则会返回Android.mk文件所在的目录。

include $(CLEAR_VARS) #清除几乎所有以LOCAL开头的变量（不包括LOCAL_PATH）

LOCAL_MODULE    := JniUtil  #为编译出的.so库的名字
LOCAL_SRC_FILES := jniUtil.c #为需要编译的.c文件。

include $(BUILD_SHARED_LIBRARY) #作用是指定生成的静态库或者共享库在运行时依赖的共享库模块列表