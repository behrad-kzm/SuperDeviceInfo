//
//  UseCaseProvider.swift
//  SuperDeviceInfo
//
//  Created by Behrad Kazemi on 5/30/21.
//

import Foundation

public struct UseCaseProvider {
  public static func makeInfo(fromDictionary dict: [String: SuperDeviceInfoEnumsProtocol]) -> [String: Any] {
    return Dictionary(uniqueKeysWithValues: dict.map { key, value in (key, value.extractDataFromDevice()) })
  }
  
  public static func getAllInfo() -> [String: Any] {
    let allInfo = getAllInfoDictionary()
    return makeInfo(fromDictionary: allInfo)
  }
}

