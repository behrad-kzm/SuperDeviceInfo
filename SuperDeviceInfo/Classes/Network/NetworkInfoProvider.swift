//
//  NetworkInfoProvider.swift
//  SuperDeviceInfo
//
//  Created by Behrad Kazemi on 6/11/21.
//

import Foundation
import SystemServices

extension NetworkInfoType: SuperDeviceInfoEnumsProtocol {
  public func extractDataFromDevice() -> Any {
    switch self {
    
    case .carrierName:
      return SystemServices.shared().carrierName ?? ""
      
    case .carrierCountry:
      return SystemServices.shared().carrierCountry ?? ""
      
    case .carrierMobileCountryCode:
      return SystemServices.shared().carrierMobileCountryCode ?? ""
      
    case .carrierISOCountryCode:
      return SystemServices.shared().carrierISOCountryCode ?? ""
      
    case .carrierMobileNetworkCode:
      return SystemServices.shared().carrierMobileNetworkCode ?? ""
      
    case .carrierAllowsVOIP:
      return SystemServices.shared().carrierAllowsVOIP
      
    case .currentIPAddress:
      return SystemServices.shared().currentIPAddress ?? ""
      
    case .externalIPAddress:
      return SystemServices.shared().externalIPAddress ?? ""
      
    case .cellIPAddress:
      return SystemServices.shared().cellIPAddress ?? ""
      
    case .cellNetmaskAddress:
      return SystemServices.shared().cellNetmaskAddress ?? ""
      
    case .cellBroadcastAddress:
      return SystemServices.shared().cellBroadcastAddress ?? ""
      
    case .wiFiIPAddress:
      return SystemServices.shared().wiFiIPAddress ?? ""
      
    case .wiFiNetmaskAddress:
      return SystemServices.shared().wiFiNetmaskAddress ?? ""
      
    case .wiFiBroadcastAddress:
      return SystemServices.shared().wiFiBroadcastAddress ?? ""
      
    case .wiFiRouterAddress:
      return SystemServices.shared().wiFiRouterAddress ?? ""
      
    case .connectedToWiFi:
      return SystemServices.shared().connectedToWiFi
      
    case .connectedToCellNetwork:
      return SystemServices.shared().connectedToCellNetwork
    }
  }
}
