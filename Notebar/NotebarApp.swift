//
//  NotebarApp.swift
//  Notebar
//
//  Created by Zac Garby on 16/07/2021.
//

import SwiftUI

@main
struct NotebarApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        Settings{
            EmptyView()
        }
    }
}
