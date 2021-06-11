//
//  UseCaseProvider.swift
//  SuperDeviceInfo
//
//  Created by Behrad Kazemi on 5/30/21.
//

import Foundation

public struct UseCaseProvider {
  public func makeInfo(fromDictionary dict: [String: SuperDeviceInfoEnumsProtocol]) -> [String: Any] {
    return Dictionary(uniqueKeysWithValues: dict.map { key, value in (key, value.extractDataFromDevice()) })
  }
}
