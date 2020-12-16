//
//  IntAxisValueFormatter.swift
//  ChartsDemo-iOS
//
//  Created by Thomas Woodfin on 2017-07-09.
//  Copyright © 2020 Thomas Woodfin. All rights reserved.
//

import Foundation
import Charts

public class IntAxisValueFormatter: NSObject, AxisValueFormatter {
    public func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        return "\(Int(value))"
    }
}
