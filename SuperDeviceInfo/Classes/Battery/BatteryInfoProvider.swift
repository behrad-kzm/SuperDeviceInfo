//
//  BatteryInfoProvider.swift
//  SuperDeviceInfo
//
//  Created by Behrad Kazemi on 6/8/21.
//

import Foundation
import SystemServices
extension BatteryInfoType: SuperDeviceInfoEnumsProtocol {
  
  public func extractDataFromDevice() -> Any {
    switch self {
    
    case .pluggedIn:
      return SystemServices.shared().pluggedIn
      
    case .batteryLevel:
      return SystemServices.shared().batteryLevel
      
    case .charging:
      return SystemServices.shared().charging
      
    case .fullyCharged:
      return SystemServices.shared().fullyCharged
      
    }
  }
}
