//
//  AppDelegate.swift
//  Notebar
//
//  Created by Zac Garby on 16/07/2021.
//

import Cocoa
import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
    var statusBarItem: NSStatusItem!
    var window: NotebarWindow?
    var eventMonitor: EventMonitor?
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        statusBarItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        if let btn = statusBarItem.button {
            btn.title = "Notebar"
            btn.target = self
            btn.action = #selector(toggleWindow)
        }
        
        eventMonitor = EventMonitor(mask: [.leftMouseDown, .rightMouseDown], handler: mouseEventHandler)
        eventMonitor?.start()
        
        NSApp.activate(ignoringOtherApps: true)
    }
    
    @objc func toggleWindow() {
        if let win = window {
            if !win.isVisible {
                win.makeKeyAndOrderFront(self)
                NSApp.activate(ignoringOtherApps: true)
            } else {
                win.close()
            }
        } else {
            window = NotebarWindow(btn: statusBarItem.button!)
            
            let contentView = ContentView(content: "hello, world", pageTitle: "Todo")
            let view = NSHostingView(rootView: contentView)
            window?.contentView = view
            
            window?.makeKeyAndOrderFront(self)
        }
    }
    
    func mouseEventHandler(_ event: NSEvent?) {
        if let win = window {
            if win.isVisible {
                win.close()
            }
        }
    }
}
