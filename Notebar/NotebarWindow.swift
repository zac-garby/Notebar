//
//  NotebarWindow.swift
//  Notebar
//
//  Created by Zac Garby on 23/07/2021.
//

import Cocoa
import SwiftUI

class NotebarWindow: NSPanel {
    override var canBecomeKey: Bool {
        get { return true }
    }
    
    override var canBecomeMain: Bool {
        get { return true }
    }
    
    init(btn: NSButton) {
        if let btnFrame = btn.window?.convertToScreen(btn.convert(btn.frame, to: nil)) {
            super.init(contentRect: NSRect(x: btnFrame.maxX - 250, y: btnFrame.maxY - 400, width: 250, height: 400),
                       styleMask: [.fullSizeContentView, .borderless], backing: .buffered, defer: false)
            
            isMovable = false
            isReleasedWhenClosed = false
            hidesOnDeactivate = false
            isOpaque = false
            backgroundColor = .clear
        } else {
            print("this shouldn't happen")
            exit(1)
        }
    }
}
