//
//  DisplayInfoProvider.swift
//  SuperDeviceInfo
//
//  Created by Behrad Kazemi on 6/8/21.
//

import Foundation
import SystemServices
extension DisplayInfoType: SuperDeviceInfoEnumsProtocol {
  
  public func extractDataFromDevice() -> Any {
    switch self {
    
    case .screenWidth:
      return SystemServices.shared().screenWidth
      
    case .screenHeight:
      return SystemServices.shared().screenHeight
      
    case .screenSize:
      return "\(SystemServices.shared().screenWidth)*\(SystemServices.shared().screenHeight)"
      
    case .screenBrightness:
      return SystemServices.shared().screenBrightness
      
    case .deviceOrientation:
      switch SystemServices.shared().deviceOrientation {
      case .unknown:
        return "unknown"
      case .portrait:
        return "portrait"
      case .portraitUpsideDown:
        return "portraitUpsideDown"
      case .landscapeLeft:
        return "landscapeLeft"
      case .landscapeRight:
        return "landscapeRight"
      @unknown default:
        return ""
      }
      
    }
  }
}
