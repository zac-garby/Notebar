//
//  HostingView.swift
//  Notebar
//
//  Created by Zac Garby on 27/07/2021.
//

import Cocoa
import SwiftUI

class BorderView: NSView {
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        autoresizingMask = [.width, .height]
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        let path = NSBezierPath(roundedRect: NSRect(x: bounds.minX+1, y: bounds.minY+1, width: bounds.width-2, height: bounds.height-2),
                                xRadius: 8.0, yRadius: 8.0)
        path.lineWidth = 2
        NSColor(calibratedHue: 49.0 / 360.0, saturation: 0.23, brightness: 0.25, alpha: 1.0).set()
        path.stroke()
        
        path.lineWidth = 1
        NSColor(calibratedHue: 49.0 / 360.0, saturation: 0.23, brightness: 0.55, alpha: 1.0).set()
        path.stroke()
    }
}
