//
//  DoubleToDateString.swift
//  SuperDeviceInfo
//
//  Created by Behrad Kazemi on 6/8/21.
//

import Foundation
extension TimeInterval {
  func asString(style: DateComponentsFormatter.UnitsStyle) -> String {
    let formatter = DateComponentsFormatter()
    formatter.allowedUnits = [.hour, .minute, .second, .nanosecond]
    formatter.unitsStyle = style
    guard let formattedString = formatter.string(from: self) else { return "" }
    return formattedString
  }
}
