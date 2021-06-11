//
//  UserStandardUseCases.swift
//  SuperDeviceInfo
//
//  Created by Behrad Kazemi on 6/11/21.
//

import Foundation

struct Keystore {
  
  static let launchUID = UUID().uuidString
  
  static var versionUID: String {
    
    let versionUIDKey = "DeviceSuperInfo_VersionUID"
    let appVersionKey = "DeviceSuperInfo_PreviousApplicationVersion"
    let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
    
    if appVersion == UserDefaults.standard.string(forKey: appVersionKey) ?? "1.0.0",
       let uid = UserDefaults.standard.string(forKey: versionUIDKey) {
      return uid
    }
    let uid = UUID().uuidString
    UserDefaults.standard.setValue(uid, forKey: versionUIDKey)
    UserDefaults.standard.setValue(appVersion, forKey: appVersionKey)
    return uid
    
  }
  
  
}
