//
//  ContentView.swift
//  NukeRotationBugRepro
//
//  Created by Tom Brewe on 14.04.26.
//

import Foundation
import SwiftUI
import Nuke
import NukeUI

struct ContentView: View {
    var body: some View {
        let url = Bundle.main.url(forResource: "IMG_5929", withExtension: "HEIC")!
        
        LazyImage(url: url) { state in
            if let image = state.image {
                image.resizable().scaledToFit()
            } else {
                ProgressView()
            }
        }
    }
}

#Preview {
    ContentView()
}
