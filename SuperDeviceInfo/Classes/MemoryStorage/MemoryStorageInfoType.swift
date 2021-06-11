//
//  MemoryStorageInfoType.swift
//  SuperDeviceInfo
//
//  Created by Behrad Kazemi on 6/8/21.
//

import Foundation
public enum MemoryStorageInfoType {
  
  case freeMemoryinRaw
  case freeMemoryinPercent
  case usedMemoryinRaw
  case usedMemoryinPercent
  case activeMemoryinRaw
  case activeMemoryinPercent
  case inactiveMemoryinRaw
  case inactiveMemoryinPercent
  case wiredMemoryinRaw
  case wiredMemoryinPercent
  case purgableMemoryinRaw
  case purgableMemoryinPercent
  case clipboardContent
  case totalMemory
  case diskSpace
  case freeDiskSpaceinRaw
  case freeDiskSpaceinPercent
  case usedDiskSpaceinRaw
  case usedDiskSpaceinPercent
  case longDiskSpace
  case longFreeDiskSpace
}
