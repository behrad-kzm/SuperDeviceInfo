//
//  MemoryInfoProvider.swift
//  SuperDeviceInfo
//
//  Created by Behrad Kazemi on 6/8/21.
//

import Foundation
import SystemServices
extension MemoryStorageInfoType: SuperDeviceInfoEnumsProtocol {
  
  public func extractDataFromDevice() -> Any {
    switch self {

    case .freeMemoryinRaw:
      return SystemServices.shared().freeMemoryinRaw
      
    case .freeMemoryinPercent:
      return SystemServices.shared().freeMemoryinPercent
      
    case .usedMemoryinRaw:
      return SystemServices.shared().usedMemoryinRaw
      
    case .usedMemoryinPercent:
      return SystemServices.shared().usedMemoryinPercent
      
    case .activeMemoryinRaw:
      return SystemServices.shared().activeMemoryinRaw
      
    case .activeMemoryinPercent:
      return SystemServices.shared().activeMemoryinPercent
      
    case .inactiveMemoryinRaw:
      return SystemServices.shared().inactiveMemoryinRaw
      
    case .inactiveMemoryinPercent:
      return SystemServices.shared().inactiveMemoryinPercent
      
    case .wiredMemoryinRaw:
      return SystemServices.shared().wiredMemoryinRaw
      
    case .wiredMemoryinPercent:
      return SystemServices.shared().wiredMemoryinPercent
      
    case .purgableMemoryinRaw:
      return SystemServices.shared().purgableMemoryinRaw
      
    case .purgableMemoryinPercent:
      return SystemServices.shared().purgableMemoryinPercent
      
    case .clipboardContent:
      return SystemServices.shared().clipboardContent ?? ""
      
    case .totalMemory:
      return SystemServices.shared().totalMemory
      
    case .diskSpace:
      return SystemServices.shared().diskSpace ?? ""
      
    case .freeDiskSpaceinRaw:
      return SystemServices.shared().freeDiskSpaceinRaw ?? ""
      
    case .freeDiskSpaceinPercent:
      return SystemServices.shared().freeMemoryinPercent
      
    case .usedDiskSpaceinRaw:
      return SystemServices.shared().usedDiskSpaceinRaw ?? ""
      
    case .usedDiskSpaceinPercent:
      return SystemServices.shared().usedDiskSpaceinPercent ?? ""
      
    case .longDiskSpace:
      return SystemServices.shared().longDiskSpace
      
    case .longFreeDiskSpace:
      return SystemServices.shared().longFreeDiskSpace
      
    }
  }
}
