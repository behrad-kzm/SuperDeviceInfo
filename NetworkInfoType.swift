//
//  NetworkInfoType.swift
//  SuperDeviceInfo
//
//  Created by Behrad Kazemi on 6/8/21.
//

import Foundation
public enum NetworkInfoType {
  
  case carrierName
  case carrierCountry
  case carrierMobileCountryCode
  case carrierISOCountryCode
  case carrierMobileNetworkCode
  case carrierAllowsVOIP
  case currentIPAddress
  case externalIPAddress
  case cellIPAddress
  case cellNetmaskAddress
  case cellBroadcastAddress
  case wiFiIPAddress
  case wiFiNetmaskAddress
  case wiFiBroadcastAddress
  case wiFiRouterAddress
  case connectedToWiFi
  case connectedToCellNetwork
}
