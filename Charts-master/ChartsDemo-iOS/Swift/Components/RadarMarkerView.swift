//
//  RadarMarkerView.swift
//  ChartsDemo
//
//  Created by Thomas Woodfin on 2017-07-09.
//  Copyright © 2020 Thomas Woodfin. All rights reserved.
//  A port of MPAndroidChart for iOS
//  Licensed under Apache License 2.0
//
//  https://github.com/danielgindi/Charts
//

import Foundation
import Charts
#if canImport(UIKit)
    import UIKit
#endif

public class RadarMarkerView: MarkerView {
    @IBOutlet var label: UILabel!
    
    public override func awakeFromNib() {
        self.offset.x = -self.frame.size.width / 2.0
        self.offset.y = -self.frame.size.height - 7.0
    }
    
    public override func refreshContent(entry: ChartDataEntry, highlight: Highlight) {
        label.text = String.init(format: "%d %%", Int(round(entry.y)))
        layoutIfNeeded()
    }
}
