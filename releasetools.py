#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

import common
import re

def FullOTA_InstallEnd(info):
  OTA_InstallEnd(info)

def IncrementalOTA_InstallEnd(info):
  OTA_InstallEnd(info)

def AddImage(info, dir, basename, dest):
  name = basename
  data = info.input_zip.read(dir + "/" + basename)
  common.ZipWriteStr(info.output_zip, name, data)
  info.script.AppendExtra('package_extract_file("%s", "%s");' % (name, dest))

def FullOTA_InstallBegin(info):
  info.script.AppendExtra('ifelse(is_mounted("/system_root"),unmount("/system_root"));')
  info.script.AppendExtra('ifelse(is_mounted("/vendor"),unmount("/vendor"));')
  info.script.AppendExtra('assert(getprop("ro.boot.super_partition") == "system" || abort("ERROR: This recovery does not support retrofit dynamic partitions."););')
  info.script.AppendExtra('run_program("/system/bin/toybox", "blkdiscard", "/dev/block/bootdevice/by-name/system"); || abort("ERROR: Failed to discard data on system partition.");')
  info.script.AppendExtra('run_program("/system/bin/toybox", "blkdiscard", "/dev/block/bootdevice/by-name/vendor"); || abort("ERROR: Failed to discard data on vendor partition.");')
  info.script.AppendExtra('ui_print("- Flashing super_empty onto system partition...");')
  AddImage(info, "RADIO", "super_dummy.img", "/dev/block/bootdevice/by-name/system");
  return

def OTA_InstallEnd(info):
  info.script.Print("Patching device-tree and verity images...")
  AddImage(info, "IMAGES", "dtbo.img", "/dev/block/bootdevice/by-name/dtbo")
  AddImage(info, "IMAGES", "vbmeta.img", "/dev/block/bootdevice/by-name/vbmeta")
