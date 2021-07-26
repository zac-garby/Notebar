//
//  ContentView.swift
//  Notebar
//
//  Created by Zac Garby on 16/07/2021.
//

import SwiftUI

struct ContentView: View {
    @State public var content: String
    @State public var pageTitle: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            HStack {
                Button(action: {}) {
                    Image(systemName: "chevron.left")
                }
                Spacer()
                Text("Todo")
                    .font(.title3)
                Spacer()
                Button(action: {}) {
                    Image(systemName: "chevron.right")
                }
            }.padding(3.0).background(Color(hue: 49.0 / 360.0, saturation: 0.23, brightness: 0.4))
            Divider()
            TextEditor(text: $content)
                .padding(6.0)
                .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                .background(Color(hue: 49.0 / 360.0, saturation: 0.23, brightness: 1.0))
                .foregroundColor(Color(hue: 49.0 / 360.0, saturation: 0.23, brightness: 0.19))
            Divider()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(content: "hello\nworld", pageTitle: "Todo")
            .frame(width: 350.0, height: 500.0)
    }
}

extension NSTextView {
    open override var frame: CGRect {
        didSet {
            backgroundColor = .clear
            drawsBackground = true
            insertionPointColor = .red
        }
    }
}
