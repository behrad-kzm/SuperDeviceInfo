//
//  HardwareInfoProvider.swift
//  SuperDeviceInfo
//
//  Created by Behrad Kazemi on 5/30/21.
//

import Foundation
import UIKit
import SystemServices

extension HardwareInfoType: SuperDeviceInfoEnumsProtocol {
  public func extractDataFromDevice() -> Any {
    switch self {
    case .systemUptime:
      return SystemServices.shared().systemsUptime ?? ""
      
    case .deviceModel:
      return SystemServices.shared().deviceModel ?? ""
      
    case .deviceName:
      return SystemServices.shared().deviceName ?? ""
      
    case .systemName:
      return SystemServices.shared().systemName ?? ""
      
    case .systemVersion:
      return SystemServices.shared().systemsVersion ?? ""
      
    case .systemDeviceTypeFormatted:
      return UIDevice.modelName
      
    case .multitaskingEnabled:
      return SystemServices.shared().multitaskingEnabled
      
    case .proximitySensorEnabled:
      return SystemServices.shared().proximitySensorEnabled
      
    case .debuggerAttached:
      return SystemServices.shared().debuggerAttached
      
    case .stepCountingAvailable:
      return SystemServices.shared().stepCountingAvailable
      
    case .distanceAvailable:
      return SystemServices.shared().distanceAvailable
      
    case .floorCountingAvailable:
      return SystemServices.shared().floorCountingAvailable
      
    case .jailbroken:
      return SystemServices.shared().jailbroken
      
    case .numberProcessors:
      return SystemServices.shared().numberProcessors
      
    case .numberActiveProcessors:
      return SystemServices.shared().numberActiveProcessors
      
    case .processorsUsage:
      return SystemServices.shared().processorsUsage ?? ""
      
    case .accessoriesAttached:
      return SystemServices.shared().accessoriesAttached
      
    case .headphonesAttached:
      return SystemServices.shared().headphonesAttached
      
    case .numberAttachedAccessories:
      return SystemServices.shared().numberAttachedAccessories
      
    case .nameAttachedAccessories:
      return SystemServices.shared().nameAttachedAccessories ?? ""
      
    case .applicationVersion:
      return SystemServices.shared().applicationVersion ?? ""
      
    case .applicationCPUUsage:
      return SystemServices.shared().applicationCPUUsage
    }
  }
}
