//
//  LocaleInfoProvider.swift
//  SuperDeviceInfo
//
//  Created by Behrad Kazemi on 6/8/21.
//

import Foundation
import SystemServices
import AdSupport
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
    
    case .advertisementId:
      guard ASIdentifierManager.shared().isAdvertisingTrackingEnabled else {
          return ""
      }
      return ASIdentifierManager.shared().advertisingIdentifier.uuidString
      
    case .keychainPersistUID:
      if let value = try? KeychainHandler(service: "DeviceInfo", key: "AppUniqueId").readValue() {
        return value
      }
      let uid = UUID().uuidString
      _ = try? KeychainHandler(service: "DeviceInfo", key: "AppUniqueId").saveValue(uid)
      return uid
      
    case .installDeviceUID:
      return Keystore.versionUID
      
    case .launchDeviceUID:
      return Keystore.launchUID
    }
  }
}
