#
# Copyright (C) 2016 The Android Open-Source Project
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

TARGET_BOARD_PLATFORM := msmcobalt

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a9

BOARD_KERNEL_CMDLINE += console=ttyMSM0,115200,n8 earlycon=msm_serial_dm,0xc1b0000
BOARD_KERNEL_CMDLINE += androidboot.hardware=$(TARGET_BOOTLOADER_BOARD_NAME) androidboot.console=ttyMSM0
BOARD_KERNEL_CMDLINE += user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive service_locator.enable=1

BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000

TARGET_BOARD_KERNEL_HEADERS := device/google/muskie/kernel-headers

TARGET_NO_BOOTLOADER := true

TARGET_COPY_OUT_VENDOR := system/vendor

# Install odex files into the other system image
BOARD_USES_SYSTEM_OTHER_ODEX := true

BOARD_ROOT_EXTRA_FOLDERS := persist firmware

TARGET_USES_HWC2 := true

BOARD_SEPOLICY_DIRS += device/google/muskie/sepolicy

QCOM_BOARD_PLATFORMS += msmcobalt
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/google/muskie/bluetooth

-include vendor/google_devices/muskie/BoardConfigVendor.mk