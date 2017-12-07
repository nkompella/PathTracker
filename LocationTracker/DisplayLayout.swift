//
//  DisplayLayout.swift
//  LocationTracker
//
//  Created by Neha Kompella on 12/6/17.
//  Copyright © 2017 Neha Kompella. All rights reserved.
//

import Foundation

struct DisplayLayout {
  static func distance(_ distance: Double) -> String {
    let measure = Measurement(value: distance, unit: UnitLength.meters)
    return DisplayLayout.distance(measure)
  }
  
  static func distance(_ distance: Measurement<UnitLength>) -> String {
    let form = MeasurementFormatter()
    return form.string(from: distance)
  }
  
  static func time(_ seconds: Int) -> String {
    let form = DateComponentsFormatter()
    form.allowedUnits = [.hour, .minute, .second]
    form.unitsStyle = .positional
    form.zeroFormattingBehavior = .pad
    return form.string(from: TimeInterval(seconds))!
  }
  
  static func date(_ timestamp: Date?) -> String {
    guard let timestamp = timestamp as Date? else { return "" }
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    return formatter.string(from: timestamp)
  }
}
