//
//  LocaleInfoProvider.swift
//  SuperDeviceInfo
//
//  Created by Behrad Kazemi on 6/8/21.
//

import Foundation
import SystemServices
extension LocaleInfoType: SuperDeviceInfoEnumsProtocol {
  
  public func extractDataFromDevice() -> Any {
    switch self {
    case .country:
      return SystemServices.shared().country ?? ""
      
    case .language:
      return SystemServices.shared().language ?? ""
      
    case .timeZone:
      return SystemServices.shared().timeZoneSS ?? ""
      
    case .currency:
      return SystemServices.shared().currency ?? ""
    }
  }
}
