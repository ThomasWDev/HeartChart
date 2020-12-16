//
//  DateValueFormatter.swift
//  ChartsDemo-iOS
//
//  Created by Thomas Woodfin on 2017-07-09.
//  Copyright © 2020 Thomas Woodfin. All rights reserved.
//

import Foundation
import Charts

public class DateValueFormatter: NSObject, AxisValueFormatter {
    private let dateFormatter = DateFormatter()
    
    override init() {
        super.init()
        dateFormatter.dateFormat = "dd MMM HH:mm"
    }
    
    public func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        return dateFormatter.string(from: Date(timeIntervalSince1970: value))
    }
}
